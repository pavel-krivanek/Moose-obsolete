tests
testAliasSubclasses
	| type subtype alias |
	subtype := FAMIXType new name: 'SubType'.
	type := FAMIXType new name: 'Type'.
	
	FAMIXInheritance new
		subclass: subtype;
		superclass: type.
		
	alias := self actualClass new
		name: 'Alias';
		aliasedType: type;
		yourself.
		
	self assert: type subclassHierarchy size equals: 1.
	self assert: type withSubclassHierarchy size equals: 3.
	self assert: alias subclassHierarchy size equals: 1.
	self assert: alias subclassHierarchy last equals: subtype.
	self assert: alias withSubclassHierarchy size equals: 3