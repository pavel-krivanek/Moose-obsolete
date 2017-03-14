tests
testIsXMLReservedAttributeName
	self
		deny: '' isXMLReservedAttributeName;
		deny: 'name' isXMLReservedAttributeName;
		deny: 'name:xml' isXMLReservedAttributeName;
		deny: 'name:xmlns' isXMLReservedAttributeName;
		assert: 'xml:base' isXMLReservedAttributeName;
		assert: 'xml:space' isXMLReservedAttributeName;
		assert: 'xmlns' isXMLReservedAttributeName;
		assert: 'xmlns:' isXMLReservedAttributeName;
		assert: 'xmlns:name' isXMLReservedAttributeName