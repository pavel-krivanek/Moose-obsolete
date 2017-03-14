accessing
privateParentSelectors
	^ self mooseDescription allAttributes select: #isContainer thenCollect: #implementingSelector