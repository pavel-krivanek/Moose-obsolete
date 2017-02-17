tests
testMammals
	| fca element |
	fca := self initializeContext.
	element := (fca concepts at: 2) attributes at: 1.
	self assert: element bits equals: 27.
	self assert: element value equals: #hair.
	self assert: element mask equals: 2