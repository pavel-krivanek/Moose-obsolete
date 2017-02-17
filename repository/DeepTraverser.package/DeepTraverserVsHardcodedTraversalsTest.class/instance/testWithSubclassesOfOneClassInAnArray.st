testing
testWithSubclassesOfOneClassInAnArray
	self 
		assert: ({ Collection } withDeepCollect: #subclasses as: Set) size
		equals: Collection withAllSubclasses size