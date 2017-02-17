meta information
resetMooseName
	(self hasUniqueMooseNameInModel and: [ self privateState hasMooseModel ])
		ifTrue: [ self mooseModel resetMooseNameFor: self ]