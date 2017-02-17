tests
testRoot
	| document documentNodes newRoot |

	newRoot := self newElementWithAttributes.
	document := self nodeClass root: newRoot.
	self
		assert: document class == self nodeClass;
		assert: document root == newRoot.
	 
	self assert: self newNode root isNil.

	document := self newNodeWithElements.
	documentNodes := document nodes.
	self
		assert: documentNodes size = 3;
		assert: documentNodes first isComment;
		assert: (documentNodes second isElementNamed: 'zero');
		assert: documentNodes third isComment;
		assert: document root == documentNodes second.

	newRoot := self elementClass named: 'new-root'.
	self
		assert: (document root: newRoot) == document;
		assert: document root == newRoot;
		assert: document nodes = documentNodes.

	document removeNodes.
	self assert: document root isNil.

	self
		should: [document root: 'test' asXMLStringNode]
		raise: XMLDOMException.