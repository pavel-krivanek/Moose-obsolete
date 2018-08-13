tests
testBehaviortNamedIndirect

	| env behavior | 
	
	env := RGEnvironment new.
	behavior := env ensureClassNamed: 'SomeClass'.
	self assert: (env ask behaviorNamed: 'SomeClass') equals: behavior.
	self assert: (env ask behaviorNamed: 'SomeClass class') equals: behavior metaclass.
	self assert: (env ask behaviorNamed: 'SomeClass classTrait') equals: nil.

	env := RGEnvironment new.
	behavior := env ensureClassNamed: 'SomeClass class'.
	self assert: (env ask behaviorNamed: 'SomeClass class') equals: behavior.
	self assert: (env ask behaviorNamed: 'SomeClass') equals: behavior baseClass.
	self assert: (env ask behaviorNamed: 'SomeClass classTrait') equals: nil.

	env := RGEnvironment new.
	behavior := env ensureTraitNamed: 'SomeTrait'.
	self assert: (env ask behaviorNamed: 'SomeTrait') equals: behavior.
	self assert: (env ask behaviorNamed: 'SomeTrait classTrait') equals: behavior classTrait.
	self assert: (env ask behaviorNamed: 'SomeTrait class') equals: nil.

	env := RGEnvironment new.
	behavior := env ensureTraitNamed: 'SomeTrait classTrait'.
	self assert: (env ask behaviorNamed: 'SomeTrait classTrait') equals: behavior.
	self assert: (env ask behaviorNamed: 'SomeTrait') equals: behavior baseTrait.
	self assert: (env ask behaviorNamed: 'SomeTrait class') equals: nil.
