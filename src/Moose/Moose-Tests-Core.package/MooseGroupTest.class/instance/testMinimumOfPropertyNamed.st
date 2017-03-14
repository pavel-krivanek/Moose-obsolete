tests
testMinimumOfPropertyNamed
	| classes |
	classes := self model allClasses.
	self assert: (classes min: #numberOfMethods) equals: 0