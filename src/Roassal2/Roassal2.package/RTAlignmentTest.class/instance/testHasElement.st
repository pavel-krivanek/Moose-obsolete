tests
testHasElement
	self deny: align hasElement.
	align elements: (Array with: RTElement new).
	self assert: align hasElement.
	align elements: #().
	self deny: align hasElement.