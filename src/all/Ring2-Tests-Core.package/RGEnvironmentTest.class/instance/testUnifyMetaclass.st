tests
testUnifyMetaclass

	| env class1 class2 metaclass| 
	
	env := RGEnvironment new.
	class1 := env ensureClassNamed: 'SomeClass1'.
	class2 := env ensureClassNamed: 'SomeClass2'.
	
	self deny: (class1 metaclass metaclass = class2 metaclass metaclass).
	env unifyMetaclass.
	self assert: (class1 metaclass metaclass = class2 metaclass metaclass).

	env := RGEnvironment new.
	class1 := env ensureClassNamed: 'SomeClass1'.
	class2 := env ensureClassNamed: 'SomeClass2'.
	metaclass := env ensureTraitNamed: 'Metaclass'.
	
	self deny: (class1 metaclass metaclass = class2 metaclass metaclass).
	self deny: (class1 metaclass metaclass = metaclass).
	env unifyMetaclass.
	self assert: (class1 metaclass metaclass = class2 metaclass metaclass).
	self assert: (class1 metaclass metaclass = metaclass).

