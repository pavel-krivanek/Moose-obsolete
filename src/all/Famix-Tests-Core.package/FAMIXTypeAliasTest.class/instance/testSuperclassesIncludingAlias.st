tests
testSuperclassesIncludingAlias
	| type supertype alias subalias |
	supertype := FAMIXType new name: 'SuperType'.
	type := FAMIXType new name: 'Type'.
	FAMIXInheritance new
		superclass: supertype;
		subclass: type.
	alias := self actualClass new name: 'Alias'.
	alias aliasedType: type.
	subalias := self actualClass new name: 'SubType'.
	FAMIXInheritance new
		subclass: subalias;
		superclass: alias.
	self assert: supertype subclassHierarchy size equals: 3.
	self assert: subalias superclassHierarchy size equals: 3