tests
testEntityNestingElementPartialSelfClosingTag
	#('<!DOCTYPE test [
				<!ENTITY partial "<">
			]><test>&partial;a name=''value''/></test>'
		'<!DOCTYPE test [
				<!ENTITY partial "<a">
			]><test>&partial;name=''value''/></test>'
		'<!DOCTYPE test [
				<!ENTITY partial "<a name">
			]><test>&partial;=''value''/></test>'
		'<!DOCTYPE test [
				<!ENTITY partial "<a name=">
			]><test>&partial;''value''/></test>'
		'<!DOCTYPE test [
				<!ENTITY partial "<a name=''">
			]><test>&partial;value''/></test>'
		'<!DOCTYPE test [
				<!ENTITY partial "<a name=''value">
			]><test>&partial;''/></test>'
		'<!DOCTYPE test [
				<!ENTITY partial "<a name=''value''">
			]><test>&partial;/></test>'
		'<!DOCTYPE test [
				<!ENTITY partial "<a name=''value''/">
			]><test>&partial;></test>')
		do: [:each |
			self
				should: [SAXHandler parse: each]
				raise: XMLWellFormednessException].