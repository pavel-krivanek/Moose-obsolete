tests
testRoot
	| document newRoot |

	newRoot := self newElementWithAttributes.
	document := self nodeClass root: newRoot.
	self
		assert: document class == self nodeClass;
		assert: document root == newRoot.
	 
	self assert: self newNode root isNil.

	document := self newNodeWithElements.
	self
		assert: document root == document nodes second;
		assert: document nodes size = 3;
		assert: document nodes first isComment;
		assert: (document nodes second isElementNamed: 'zero');
		assert: document nodes third isComment.

	newRoot := self elementClass named: 'new-root'.
	self
		assert: (document root: newRoot) == document;
		assert: document root == newRoot;
		assert: document nodes size = 3;
		assert: document nodes first isComment;
		assert: document nodes second == newRoot;
		assert: document nodes third isComment.

	document removeNodes.
	self assert: document root isNil.

	self
		should: [document root: 'test' asXMLStringNode]
		raise: XMLDOMException.