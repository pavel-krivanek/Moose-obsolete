tests
testNotationDeclarationWhitespace
	#('<!DOCTYPE test [<!NOTATIONname PUBLIC "publicid">]>'
		'<!DOCTYPE test [<!NOTATION name PUBLIC"publicid">]>'
		'<!DOCTYPE test [<!NOTATION name PUBLIC "publicid""systemid">]>'
		'<!DOCTYPE test [<!NOTATION name SYSTEM"systemid">]>')
		do: [:each |
			self
				should: [SAXHandler parse: each, '<test/>']
				raise: XMLWellFormednessException].

	#('<!DOCTYPE test [<!NOTATION     name  PUBLIC  "publicid"   >]>'
		'<!DOCTYPE test [<!NOTATION name PUBLIC        "publicid"   "systemid"   >]>'
		'<!DOCTYPE test [<!NOTATION name SYSTEM        "systemid"		>]>')
		do: [:each |
			self
				shouldnt: [SAXHandler parse: each, '<test/>']
				raise: XMLWellFormednessException].