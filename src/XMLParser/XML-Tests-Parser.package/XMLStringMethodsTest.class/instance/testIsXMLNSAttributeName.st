tests
testIsXMLNSAttributeName
	self
		deny: '' isXMLNSAttributeName;
		deny: 'name' isXMLNSAttributeName;
		deny: 'name:xml' isXMLReservedAttributeName;
		deny: 'name:xmlns' isXMLReservedAttributeName;
		deny: 'xml:base' isXMLNSAttributeName;
		deny: 'xml:space' isXMLNSAttributeName;
		assert: 'xmlns' isXMLNSAttributeName;
		assert: 'xmlns:' isXMLNSAttributeName;
		assert: 'xmlns:name' isXMLNSAttributeName