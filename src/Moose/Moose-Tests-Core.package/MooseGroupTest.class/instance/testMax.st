tests
testMax
	| classes |
	classes := self model allClasses.
	self assert: (classes max: #numberOfMethods) equals: 15