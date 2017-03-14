*famix-extensions-HierarchyTesting
isADirectSubclassOf: aClass 
	 
	aClass class = FAMIXClass 
		ifTrue: [^aClass directSubclasses includes: self] 
		ifFalse: [^false]