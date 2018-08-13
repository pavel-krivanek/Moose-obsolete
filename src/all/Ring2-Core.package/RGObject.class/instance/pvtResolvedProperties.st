private - backend interface
pvtResolvedProperties

	^ self pvtResolvableProperties select: [:each | each value isRingResolved ] thenCollect: #key