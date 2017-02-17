testing
testWithSubclassesOfMultipleClasses
	self 
		assert: ({ Collection . Exception } withDeepCollect: #subclasses as: Set) size
		equals: (Collection withAllSubclasses , Exception withAllSubclasses) asSet size