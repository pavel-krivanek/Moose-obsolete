accessing
privateParentTypes
	^ self mooseDescription allAttributes select: #isContainer thenCollect: [:prop | prop type implementingClass]