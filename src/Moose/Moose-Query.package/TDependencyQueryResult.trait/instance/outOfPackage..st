filtering
outOfPackage: aFAMIXPackage 
	
	^ self rejectDependencies: [ :dep | (self opposite: dep) isCollection ifTrue: [ (self opposite: dep) isNotEmpty and: [(self opposite: dep) anySatisfy: [ :anEntity | anEntity packageScope == aFAMIXPackage ] ] ] ifFalse: [aFAMIXPackage == (self opposite: dep) packageScope]]