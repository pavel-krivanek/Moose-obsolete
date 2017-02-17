tests
testHasElements
	self
		deny: self newNode hasElements;
		assert: self newNodeWithElements hasElements;
		deny: self newNodeWithElements removeNodes hasElements