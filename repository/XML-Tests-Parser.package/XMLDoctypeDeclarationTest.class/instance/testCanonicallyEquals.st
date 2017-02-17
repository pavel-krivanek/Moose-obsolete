tests
testCanonicallyEquals
	self
		assert: (self newNode canonicallyEquals: self newNode);
		assert: (self newNodeWithNodes canonicallyEquals: self newNodeWithNodes);
		assert: (self newNodeWithNodes canonicallyEquals: self newNode)