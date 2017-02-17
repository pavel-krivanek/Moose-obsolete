initialization
tableConstraint
	^ super tableConstraint
		==> [ :token | 
			token first ifNotNil: [ token second name: token first second ].
			token second ]