*SmallDude-Moose-accessing derived
allMultiplications 
	 
	<navigation: 'All multiplications'> 
	^DudeMultiplicationGroup 
		withAll: 
			((self mooseModel ifNil: [ MooseModel new ]) 
				allMultiplications 
					select: [:each | each isMultiplicationOf: self]) 
		withDescription: 'All multiplications of ' , self mooseName