tests
testAsString
	self
		assert: self newNode asString = '';
		assert: (self nodeClass string: 'test') asString = 'test'