tests
testEntityNestingElementPartialStartTag
	#('<!DOCTYPE test [
				<!ENTITY partial "<">
			]><test>&partial;a name=''value''></a></test>'
		'<!DOCTYPE test [
				<!ENTITY partial "<a">
			]><test>&partial;name=''value''></a></test>'
		'<!DOCTYPE test [
				<!ENTITY partial "<a name">
			]><test>&partial;=''value''></a></test>'
		'<!DOCTYPE test [
				<!ENTITY partial "<a name=">
			]><test>&partial;''value''></a></test>'
		'<!DOCTYPE test [
				<!ENTITY partial "<a name=''">
			]><test>&partial;value''></a></test>'
		'<!DOCTYPE test [
				<!ENTITY partial "<a name=''value">
			]><test>&partial;''></a></test>'
		'<!DOCTYPE test [
				<!ENTITY partial "<a name=''value''">
			]><test>&partial;></a></test>'
		'<!DOCTYPE test [
				<!ENTITY partial "<a name=''value''>">
			]><test>&partial;</a></test>')
		do: [:each |
			self
				should: [SAXHandler parse: each]
				raise: XMLWellFormednessException].