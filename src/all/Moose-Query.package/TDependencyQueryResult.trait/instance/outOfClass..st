filtering
outOfClass: aFAMIXClass 
	
	^ self rejectDependencies: [ :dep | (self opposite: dep) isCollection ifTrue: [ (self opposite: dep) isNotEmpty and: [(self opposite: dep) anySatisfy: [ :anEntity | anEntity typeScope == aFAMIXClass ] ] ] ifFalse: [aFAMIXClass == (self opposite: dep) typeScope]]