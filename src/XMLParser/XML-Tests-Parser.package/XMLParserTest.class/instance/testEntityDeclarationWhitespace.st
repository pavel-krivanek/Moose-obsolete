tests
testEntityDeclarationWhitespace
	#('<!ENTITYname "value">'
		'<!ENTITY name"value">'
		'<!ENTITY name PUBLIC"publicid" "systemid">'
		'<!ENTITY name PUBLIC "publicid""systemid">'
		'<!ENTITY name SYSTEM"systemid">'
		'<!ENTITY name PUBLIC "publicid" "systemid"NDATA GIF>'
		'<!ENTITY name SYSTEM "systemid"NDATA GIF>'
		'<!ENTITY% name "value">'
		'<!ENTITY %name "value">')
		do: [:each |
			self
				should: [SAXHandler parse: '<!DOCTYPE test [', each, ']><test/>']
				raise: XMLWellFormednessException].

	#('<!ENTITY  name 	"value"   >'
		'<!ENTITY   % 	 name "value"	>'
		'<!ENTITY   name   PUBLIC   "publicid"    "systemid"   >'
		'<!ENTITY   name   SYSTEM    "systemid"   >')
		do: [:each |
			self
				shouldnt: [SAXHandler parse: '<!DOCTYPE test [', each, ']><test/>']
				raise: XMLWellFormednessException].