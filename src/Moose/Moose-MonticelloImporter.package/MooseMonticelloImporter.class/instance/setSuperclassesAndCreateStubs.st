private
setSuperclassesAndCreateStubs
	| famixInheritance superclass |
	self targetModel allClasses do: 
		[ :famixClass | 
		superclass := self ensureClassNamed: (famixClass propertyNamed: #superclassName).
		famixInheritance := FAMIXInheritance new
			subclass: famixClass;
			superclass: superclass.
		famixClass addSuperInheritance: famixInheritance.
		superclass addSubInheritance: famixInheritance ]