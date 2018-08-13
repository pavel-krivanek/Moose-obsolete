tests
testUnifyTrait

	| env trait1 trait2 trait| 
	
	env := RGEnvironment new.
	trait1 := env ensureTraitNamed: 'SomeTrait1'.
	trait2 := env ensureTraitNamed: 'SomeTrait2'.
	
	self deny: (trait1 metaclass = trait2 metaclass).
	env unifyTrait.
	self assert: (trait1 metaclass = trait2 metaclass).

	env := RGEnvironment new.
	trait1 := env ensureTraitNamed: 'SomeTrait1'.
	trait2 := env ensureTraitNamed: 'SomeTrait2'.
	trait := env ensureClassNamed: 'Trait'.
	
	self deny: (trait1 metaclass = trait2 metaclass).
	self deny: (trait1 metaclass = trait).
	env unifyTrait.
	self assert: (trait1 metaclass = trait2 metaclass).
	self assert: (trait1 metaclass = trait).

