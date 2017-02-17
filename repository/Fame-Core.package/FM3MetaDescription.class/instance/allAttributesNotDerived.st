accessing-query
allAttributesNotDerived
	^ self allAttributes reject: [ :attr | attr isDerived ]