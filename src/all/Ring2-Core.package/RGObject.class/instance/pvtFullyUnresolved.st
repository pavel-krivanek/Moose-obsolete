private - backend interface
pvtFullyUnresolved		
		
	^ (self pvtResolvableProperties collect: #value) noneSatisfy: #isRingFullyResolved 