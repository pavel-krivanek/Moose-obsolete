tests
testSum
	| classes |
	classes := self model allClasses.
	self assert: (classes sumNumbers: #numberOfMethods) equals: 54