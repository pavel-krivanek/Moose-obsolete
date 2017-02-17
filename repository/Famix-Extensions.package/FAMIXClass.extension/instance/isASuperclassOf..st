*famix-extensions-HierarchyTesting
isASuperclassOf: aClass 
	 
	^aClass class = FAMIXClass 
		ifTrue: [aClass superclassHierarchyGroup includes: self] 
		ifFalse: [false]