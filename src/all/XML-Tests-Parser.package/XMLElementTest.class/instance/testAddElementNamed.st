tests
testAddElementNamed
	| element |

	super testAddElementNamed.

	element := self newNode.
	element
		declarePrefix: 'prefix'
		uri: 'prefixNS'.
	self
		shouldnt: [element addElementNamed: 'prefix:test']
		raise: XMLNamespaceException.
	self
		assert: element nodes size = 1;
		assert: element firstNode isElement;
		assert: element firstNode name = 'prefix:test';
		assert: element firstNode namespaceURI = 'prefixNS'.