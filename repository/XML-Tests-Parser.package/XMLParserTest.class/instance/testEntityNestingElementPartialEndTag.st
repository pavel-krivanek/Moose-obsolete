tests
testEntityNestingElementPartialEndTag
	#('<!DOCTYPE test [
				<!ENTITY partial "<">
			]><test><a name=''value''>&partial;/a></test>'
		'<!DOCTYPE test [
				<!ENTITY partial "</">
			]><test><a name=''value''>&partial;a></test>'
		'<!DOCTYPE test [
				<!ENTITY partial "</a">
			]><test><a name=''value''>&partial;></test>'
		'<!DOCTYPE test [
				<!ENTITY partial "</a>">
			]><test><a name=''value''>&partial;</test>')
		do: [:each |
			self
				should: [SAXHandler parse: each]
				raise: XMLWellFormednessException].