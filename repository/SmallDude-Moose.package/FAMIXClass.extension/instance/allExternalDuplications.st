*SmallDude-Moose-accessing derived
allExternalDuplications 
	 
	<navigation: 'External duplications'> 
	^DudeDuplicationGroup 
		withAll: 
			((self mooseModel ifNil: [ MooseModel new ]) allDuplications 
				select: 
					[:dup | (dup isSelfDuplicationOf: self) not and: [dup isDuplicationOf: self]]) 
		withDescription: 'All external duplications of ' , self mooseName