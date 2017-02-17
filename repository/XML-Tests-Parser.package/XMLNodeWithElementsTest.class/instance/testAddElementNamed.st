tests
testAddElementNamed
	| nodeWithElements element |

	nodeWithElements := self newNode.
	element := nodeWithElements addElementNamed: 'one'.
	self
		assert: nodeWithElements nodes size = 1;
		assert: element isElement;
		assert: element name = 'one'.
	self
		should: [nodeWithElements addElementNamed: 'undeclared:two']
		raise: XMLNamespaceException.

	nodeWithElements := self newNode.
	nodeWithElements usesNamespaces: false.
	self
		shouldnt: [nodeWithElements addElementNamed: 'undeclared:three']
		raise: XMLNamespaceException.