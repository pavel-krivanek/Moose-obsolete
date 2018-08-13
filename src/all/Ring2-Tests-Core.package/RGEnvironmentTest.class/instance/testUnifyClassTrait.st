tests
testUnifyClassTrait

	| env trait1 trait2 classTrait| 
	
	env := RGEnvironment new.
	trait1 := env ensureTraitNamed: 'SomeTrait1'.
	trait2 := env ensureTraitNamed: 'SomeTrait2'.
	
	self deny: (trait1 classTrait metaclass = trait2 classTrait metaclass).
	env unifyClassTrait.
	self assert: (trait1 classTrait metaclass = trait2 classTrait metaclass).

	env := RGEnvironment new.
	trait1 := env ensureTraitNamed: 'SomeTrait1'.
	trait2 := env ensureTraitNamed: 'SomeTrait2'.
	classTrait := env ensureClassNamed: 'ClassTrait'.
	
	self deny: (trait1 classTrait metaclass = trait2 classTrait metaclass).
	self deny: (trait1 classTrait metaclass = classTrait).
	env unifyClassTrait.
	self assert: (trait1 classTrait metaclass = trait2 classTrait metaclass).
	self assert: (trait1 classTrait metaclass = classTrait).

