tests
testSize
	self
		assert: self newNode size = 0;
		assert: (self nodeClass string: 'test') size = 4