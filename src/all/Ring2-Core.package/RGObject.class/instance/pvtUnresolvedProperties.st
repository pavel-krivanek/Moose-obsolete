private - backend interface
pvtUnresolvedProperties

	^ self pvtResolvableProperties select: [:each | each value isRingResolved not ] thenCollect: #key