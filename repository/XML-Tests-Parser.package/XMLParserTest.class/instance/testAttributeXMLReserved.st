tests
testAttributeXMLReserved
	| xml document element |

	xml := '<a xml="one" xmll="two" xml:="three" xmlnss="four"></a>'.
	document := XMLDOMParser parse: xml usingNamespaces: true.
	element := document root.
	self
		assert: element attributes size = 4;
		assert: (element attributeAt: 'xml') = 'one';
		assert: (element attributeAt: 'xmll') = 'two';
		assert: (element attributeAt: 'xml:') = 'three';
		assert: (element attributeAt: 'xmlnss') = 'four'.