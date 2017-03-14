tests
testEmpty

	self assert: b numberOfItems equals: 0.
	self assert: b numberOfRows equals: 0.
	self assert: b numberOfColumns equals: 0.
	self assert: b rows equals: #().
	self assert: b columns equals: #().
	