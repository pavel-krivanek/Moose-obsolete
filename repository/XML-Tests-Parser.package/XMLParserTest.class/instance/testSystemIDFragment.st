tests
testSystemIDFragment
	#('<!DOCTYPE test [
			<!ENTITY one SYSTEM "test#one">
		]><test/>'
		'<!DOCTYPE test [
			<!ENTITY % one SYSTEM "test#one">
		]><test/>'
		'<!DOCTYPE test [
			<!NOTATION note SYSTEM "two">
			<!ENTITY two SYSTEM "test#two" NDATA note>
		]><test/>')
		do: [:each |
			self
				should: [SAXHandler parse: each]
				raise: XMLParserException].

	"DOCTYPE and NOTATION system IDs with fragments are OK"
	self
		shouldnt: [
			SAXHandler parse:
				'<!DOCTYPE test SYSTEM "test#one" [
					<!NOTATION note SYSTEM "test#two">
					<!ENTITY one SYSTEM "test">
					<!ENTITY % two SYSTEM "test">
					<!ENTITY three SYSTEM "test" NDATA note>
				]><test/>']		
		raise: XMLParserException.