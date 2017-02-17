tests
testAliasSuperclasses
	| type supertype inheritance alias model |
	model := MooseModel new.
	model sourceLanguage: FAMIXCSourceLanguage new.
	supertype := FAMIXType new name: 'SuperType'; mooseModel: model; yourself.
	type := FAMIXType new name: 'Type'; mooseModel: model; yourself.
	inheritance := FAMIXInheritance new mooseModel: model; yourself.
	inheritance superclass: supertype.
	inheritance subclass: type.
	alias := FAMIXTypeAlias new mooseModel: model; yourself.
	alias aliasedType: type.
	self assert: type superclassHierarchy size equals: 1.
	self assert: type withSuperclassHierarchy size equals: 3.
	self assert: alias superclassHierarchy size equals: 1.
	self assert: alias superclassHierarchy last equals: supertype.
	self assert: alias withSuperclassHierarchy size equals: 3