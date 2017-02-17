*Famix-Implementation
withSubclassHierarchy
	^ self subclassHierarchy 
		addFirst: self realType;
		addAll: self realType allTypeAliases;
		yourself