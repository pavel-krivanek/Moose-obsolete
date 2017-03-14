tests
testRedirectionOfMessages

	|cc |
	cc := CommonCollection on: (OrderedCollection new).	
	self assert: cc size = 0.
	cc add: 1.
	self assert: cc size = 1.
	cc addAll: {2. 3}.
	self assert: cc size = 3.
	cc remove: 2.
	self assert: cc size = 2.		