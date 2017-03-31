tests
testAllLikeSelectors
	self assert: self model allClasses size equals: self model allClasses allClasses size.
	self model allClasses allMethods size = 57.
	self assert: (self model allClasses , self model allMethods) allClasses size equals: self model allClasses size.
	self assert: (self model allClasses , self model allMethods) allMethods size equals: self model allMethods size.
	self assert: ((self model allClasses , self model allMethods) allClasses isKindOf: FAMIXTypeGroup)