tests
testPrefix
	| element |

	element := self newNode.
	self
		assert: element prefix = '';
		assert: (element name: 'one') == element;
		assert: element prefix = ''.

	element
		declarePrefix: 'prefix'
		uri: 'prefixNS'.
	self
		assert: (element prefix: 'prefix') == element;
		assert: element name = 'prefix:one';
		assert: element prefix = 'prefix';
		assert: (element name: 'prefix:two') == element;
		assert: element name = 'prefix:two';
		assert: element prefix = 'prefix';
		assert: (element prefix: '') == element;
		assert: element name = 'two';
		assert: element prefix = ''.

	self
		should: [element prefix: 'undeclared']
		raise: XMLNamespaceException.