tests
testCanonicallyEquals
	super testCanonicallyEquals.
	self
		assert: (self newNodeWithNodes canonicallyEquals: self newNodeWithNodes);
		deny: (self newNodeWithNodes canonicallyEquals: self newNode).