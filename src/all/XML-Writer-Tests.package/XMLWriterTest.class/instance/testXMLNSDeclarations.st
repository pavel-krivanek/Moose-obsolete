tests
testXMLNSDeclarations
	| writer tag |

	writer := XMLWriter new.
	tag := writer  tag: 'test'.
	self
		deny: tag hasXMLNSDeclarations;
		deny: (tag includesXMLNS: '');
		deny: (tag includesXMLNS: 'ns1').

	tag xmlnsDeclarations: (Array with: '' -> 'default1' with: 'ns1' -> 'first').
	self
		assert: tag hasXMLNSDeclarations;
		assert: (tag includesXMLNS: '');
		assert: (tag includesXMLNS: 'ns1');
		assert: tag xmlns = 'default1';
		assert: (tag xmlnsAt: '') = 'default1';
		assert: (tag xmlns: 'default2') = tag;
		assert: tag xmlns = 'default2';
		assert: (tag xmlnsAt: 'ns1') = 'first';
		assert: (tag xmlnsAt: 'ns2' put: 'second') = 'second';
		assert: (tag xmlnsAt: 'ns3' ifAbsentPut: ['third']) = 'third';
		assert: (tag xmlnsAt: 'ns4' ifAbsent: [nil]) isNil;
		assert: (tag xmlnsAt: 'ns4') isEmpty;
		assert: (tag xmlnsDeclarations at: 'ns4') isEmpty.

	self assert:
		writer contents =
			'<test xmlns="default2" xmlns:ns1="first" xmlns:ns2="second" xmlns:ns3="third" />'.