*SmallDude-Moose-accessing derived
allInternalMultiplications 
	 
	<navigation: 'Internal multiplications'> 
	^DudeMultiplicationGroup 
		withAll: 
			((self mooseModel ifNil: [MooseModel new]) 
				allMultiplications 
				select: [:each | each isInternalTo: self]) 
		withDescription: 'All internal multiplications of ' , self mooseName