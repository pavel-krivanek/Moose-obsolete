tests
testEntityNestingComment
	#('<!DOCTYPE test [
				<!ENTITY partial "<">
			]><test>&partial;!--ignored--></test>'
		'<!DOCTYPE test [
				<!ENTITY partial "<!">
			]><test>&partial;--ignored--></test>'
		'<!DOCTYPE test [
				<!ENTITY partial "<!-">
			]><test>&partial;-ignored--></test>'
		'<!DOCTYPE test [
				<!ENTITY partial "<!--">
			]><test>&partial;ignored--></test>'
		'<!DOCTYPE test [
				<!ENTITY partial "<!--ignored">
			]><test>&partial;--></test>'
		'<!DOCTYPE test [
				<!ENTITY partial "<!--ignored-">
			]><test>&partial;-></test>'
		'<!DOCTYPE test [
				<!ENTITY partial "<!--ignored--">
			]><test>&partial;></test>')
		do: [:each |
			self
				should: [SAXHandler parse: each]
				raise: XMLWellFormednessException].

	self
		shouldnt: [
			SAXHandler parse:
				'<!DOCTYPE test [
						<!ENTITY total "<?name value?>">
					]><test>&total;</test>']
		raise: XMLWellFormednessException.