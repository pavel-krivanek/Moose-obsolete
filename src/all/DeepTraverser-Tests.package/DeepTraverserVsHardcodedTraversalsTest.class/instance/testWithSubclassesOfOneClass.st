testing
testWithSubclassesOfOneClass
	self 
		assert: (Collection withDeepCollect: #subclasses as: Set) size
		equals: Collection withAllSubclasses size