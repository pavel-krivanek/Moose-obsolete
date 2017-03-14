tests
testLocalName
	| element |

	element := self newNode.
	self
		assert: element localName = '';
		assert: (element name: 'one') == element;
		assert: element localName = 'one';
		assert: (element name: 'two') == element;
		assert: element localName = 'two'.

	element
		declarePrefix: 'prefix'
		uri: 'prefixNS'.
	self
		assert: (element name: 'prefix:three') == element;
		assert: element localName = 'three';
		assert: (element name: 'four') == element;
		assert: element localName = 'four'.