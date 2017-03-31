tests
testDoctypeDeclarationWhitespace
	"whitespace is mandatory after the 'DOCTYPE', before and within any external id,
	but is optional before the '[' and after the ']' of the interal subset"
	#('<!DOCTYPEtest>'
		'<!DOCTYPE testPUBLIC "publicid" "systemid">'
		'<!DOCTYPE test PUBLIC"publicid" "systemid">'
		'<!DOCTYPE test PUBLIC "publicid""systemid">'
		'<!DOCTYPE testSYSTEM "systemid">'
		'<!DOCTYPE test SYSTEM"systemid">')
		do: [:each |
			self
				should: [SAXHandler parse: each, '<test/>']
				raise: XMLWellFormednessException].

	#('<!DOCTYPE
			test
			PUBLIC
			   "publicid"
			   "systemid"
		 >'
		'<!DOCTYPE
			test
			SYSTEM
			   "systemid"
		>'
		'<!DOCTYPE
			test
			PUBLIC
			   "publicid"
			   "systemid"
			[
			]
		 >'
		'<!DOCTYPE
			test
			SYSTEM
			   "systemid"
			[
			]
		>'
		'<!DOCTYPE test PUBLIC "publicid" "systemid"[]>'
		'<!DOCTYPE test SYSTEM "systemid"[]>'
		'<!DOCTYPE test[]>')
		do: [:each |
			self
				shouldnt: [SAXHandler parse: each, '<test/>']
				raise: XMLWellFormednessException].