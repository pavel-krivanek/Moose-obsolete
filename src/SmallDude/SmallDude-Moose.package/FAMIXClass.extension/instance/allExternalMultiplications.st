*SmallDude-Moose-accessing derived
allExternalMultiplications 
	 
	<navigation: 'External multiplications'> 
	^DudeMultiplicationGroup 
		withAll: 
			((self mooseModel ifNil: [MooseModel new]) 
				allMultiplications select: 
					[:each | (each isInternalTo: self) not and: [each isMultiplicationOf: self]]) 
		withDescription: 'All external multiplications of ' , self mooseName