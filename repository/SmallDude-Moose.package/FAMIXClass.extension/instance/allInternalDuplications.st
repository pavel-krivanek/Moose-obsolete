*SmallDude-Moose-accessing derived
allInternalDuplications 
	 
	<navigation: 'Internal duplications'> 
	^DudeDuplicationGroup 
		withAll: 
			((self mooseModel ifNil: [ MooseModel new ]) allDuplications 
				select: [:dup | dup isSelfDuplicationOf: self]) 
		withDescription: 'All internal duplications of ' , self mooseName