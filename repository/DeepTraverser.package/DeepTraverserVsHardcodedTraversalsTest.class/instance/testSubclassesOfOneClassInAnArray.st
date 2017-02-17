testing
testSubclassesOfOneClassInAnArray
	self 
		assert: ({ Collection } deepCollect: #subclasses as: Set) size
		equals: Collection allSubclasses size