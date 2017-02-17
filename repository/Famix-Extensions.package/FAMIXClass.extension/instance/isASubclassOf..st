*famix-extensions-HierarchyTesting
isASubclassOf: aClass 
	 
	^aClass class = FAMIXClass 
		ifTrue: [aClass subclassHierarchyGroup includes: self] 
		ifFalse: [false]