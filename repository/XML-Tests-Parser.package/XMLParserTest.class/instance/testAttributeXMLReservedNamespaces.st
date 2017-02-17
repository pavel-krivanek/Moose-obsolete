tests
testAttributeXMLReservedNamespaces
	| xml xmlWithDuplicateID document element |

	xml :=
		'<test
			xml:id="test"
			xmlns="defaultNS"
			xmlns:test="testNS"
			xname="xvalue"/>'.
	document := XMLDOMParser parse: xml.
	element := document root.
	self
		assert: element namespaceScope mappedPrefixes size = 2;
		assert: element namespaceURI = 'defaultNS';
		assert: (element declaresPrefix: '' uri: 'defaultNS');
		assert: (element declaresPrefix: 'test' uri: 'testNS');
		assert: element attributes size = 2;
		assert: (element attributeAt: 'xml:id') = 'test';
		assert: (element attributeAt: 'xname') = 'xvalue'.

	document :=
		XMLDOMParser
			parse: xml
			usingNamespaces: false.
	element := document root.
	self
		deny: element hasNamespaces;
		assert: element attributes size = 4;
		assert: (element attributeAt: 'xml:id') = 'test';
		assert: (element attributeAt: 'xmlns') = 'defaultNS';
		assert: (element attributeAt: 'xmlns:test') = 'testNS';
		assert: (element attributeAt: 'xname') = 'xvalue'.

	"test that reserved attributes are still processed when namespaces
	are present by triggering an xml:id duplicate validation exception"
	xmlWithDuplicateID := '<test xml:id="test">', xml, '<test/>'.
	self
		should: [SAXHandler parse: xmlWithDuplicateID]
		raise: XMLValidationException.