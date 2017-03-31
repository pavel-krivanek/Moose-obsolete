tests
testAdd
	self
		assert: (self model allClasses copy , self model allMethods copy) size
		equals: self model allClasses size + self model allMethods size