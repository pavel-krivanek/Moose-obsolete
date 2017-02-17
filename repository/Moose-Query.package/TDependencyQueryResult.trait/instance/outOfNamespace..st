filtering
outOfNamespace: aFAMIXNamespace 

	^ self rejectDependencies: [ :dep | (self opposite: dep) isCollection ifTrue: [ (self opposite: dep) isNotEmpty and: [(self opposite: dep) anySatisfy: [ :anEntity | anEntity namespaceScope == aFAMIXNamespace ] ] ] ifFalse: [aFAMIXNamespace == (self opposite: dep) namespaceScope]]