*SmallDude-Moose-public interface
allInternalDuplications 
	 
	<navigation: 'All internal duplications'> 
	^DudeDuplicationGroup 
		withAll: 
			(self mooseModel allDuplications 
				select: [:dup | dup isSelfDuplicationOf: self]) 
		withDescription: 'All internal duplications of file ' , self mooseName