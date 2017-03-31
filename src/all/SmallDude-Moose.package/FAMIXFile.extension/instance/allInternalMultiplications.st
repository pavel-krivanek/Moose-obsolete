*SmallDude-Moose-public interface
allInternalMultiplications 
	 
	<navigation: 'All internal multiplications'> 
	| originals | 
	originals := self mooseModel allMultiplications. 
	^originals isEmpty 
		ifFalse: [originals select: [:each | each isInternalTo: self]] 
		ifTrue: [DudeMultiplicationGroup new]