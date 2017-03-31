testing
isDelegatingMethod
	^ self hasSideEffect not
		and: [ self imported isEmpty ]
		and: [ self children size = 1 ]