*SmallDude-Moose-public interface
allExternalDuplications 
	 
	<navigation: 'All external duplications'> 
	^DudeDuplicationGroup 
		withAll: 
			(self mooseModel allDuplications 
				select: 
					[:dup | (dup isSelfDuplicationOf: self) not and: [dup isDuplicationOf: self]]) 
		withDescription: 'All external duplications of file ' , self mooseName