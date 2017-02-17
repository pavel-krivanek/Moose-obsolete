tests
testEntityNestingProcessingInstruction
	#('<!DOCTYPE test [
				<!ENTITY partial "<">
			]><test>&partial;?name value?></test>'
		'<!DOCTYPE test [
				<!ENTITY partial "<?">
			]><test>&partial;name value?></test>'
		'<!DOCTYPE test [
				<!ENTITY partial "<?name">
			]><test>&partial; value?></test>'
		'<!DOCTYPE test [
				<!ENTITY partial "<?name value">
			]><test>&partial;?></test>'
		'<!DOCTYPE test [
				<!ENTITY partial "<?name value?">
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