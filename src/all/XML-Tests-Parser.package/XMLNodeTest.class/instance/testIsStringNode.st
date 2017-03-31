tests
testIsStringNode
	self
		deny: self newNode isStringNode;
		deny: (self newNode isStringNode: '').