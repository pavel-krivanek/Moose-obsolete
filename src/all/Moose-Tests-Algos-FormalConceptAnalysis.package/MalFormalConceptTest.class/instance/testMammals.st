tests
testMammals
	| fca concept |
	fca := self initializeContext.
	concept := fca concepts at: 2.
	self assert: concept numAttributes equals: 4.
	self assert: concept numObjects equals: 1.
	self assert: concept intent equals: 30.
	self assert: concept extent equals: 16