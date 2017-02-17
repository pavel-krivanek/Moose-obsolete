tests
testAliasSubclasses
	| type subtype inheritance alias |
	subtype := FAMIXType new name: 'SubType'.
	type := FAMIXType new name: 'Type'.
	inheritance := FAMIXInheritance new.
	inheritance subclass: subtype.
	inheritance superclass: type.
	alias := FAMIXTypeAlias new name: 'Alias'.
	alias aliasedType: type.
	self assert: type subclassHierarchy size equals: 1.
	self assert: type withSubclassHierarchy size equals: 3.
	self assert: alias subclassHierarchy size equals: 1.
	self assert: alias subclassHierarchy last equals: subtype.
	self assert: alias withSubclassHierarchy size equals: 3