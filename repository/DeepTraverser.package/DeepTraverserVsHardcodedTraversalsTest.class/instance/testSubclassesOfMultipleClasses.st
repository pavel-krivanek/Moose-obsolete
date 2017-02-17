testing
testSubclassesOfMultipleClasses
	self 
		assert: ({ Collection . Exception } deepCollect: #subclasses as: Set) size
		equals: (Collection allSubclasses , Exception allSubclasses) asSet size