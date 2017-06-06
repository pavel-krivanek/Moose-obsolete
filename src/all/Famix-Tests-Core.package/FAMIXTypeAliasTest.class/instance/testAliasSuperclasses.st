tests
testAliasSuperclasses
	| type supertype alias model |
	model := MooseModel new.
	model sourceLanguage: FAMIXCSourceLanguage new.
	supertype := FAMIXType new
		name: 'SuperType';
		mooseModel: model;
		yourself.
	type := FAMIXType new
		name: 'Type';
		mooseModel: model;
		yourself.
	FAMIXInheritance new
		mooseModel: model;
		superclass: supertype;
		subclass: type.
	alias := self actualClass new
		mooseModel: model;
		yourself.
	alias aliasedType: type.
	self assert: type superclassHierarchy size equals: 1.
	self assert: type withSuperclassHierarchy size equals: 3.
	self assert: alias superclassHierarchy size equals: 1.
	self assert: alias superclassHierarchy last equals: supertype.
	self assert: alias withSuperclassHierarchy size equals: 3