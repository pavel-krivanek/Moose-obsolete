*famix-extensions-HierarchyTesting
isADirectSuperclassOf: aClass 
	 
	aClass class = FAMIXClass 
		ifTrue: [^aClass superclass = self] 
		ifFalse: [^false]