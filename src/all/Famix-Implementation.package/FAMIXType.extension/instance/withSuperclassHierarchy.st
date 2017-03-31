*Famix-Implementation
withSuperclassHierarchy
	^ self realType superclassHierarchy 
		addFirst: self realType; 
		addAll: self realType allTypeAliases;
		yourself