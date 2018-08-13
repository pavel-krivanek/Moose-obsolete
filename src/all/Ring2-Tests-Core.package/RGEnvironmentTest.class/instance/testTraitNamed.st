tests
testTraitNamed

	| env trait | 
	
	env := RGEnvironment new.
	trait := env ensureTraitNamed: 'SomeTrait'.
	self assert: (env ask traitNamed: 'SomeTrait') equals: trait.
	
	env := RGEnvironment new.
	trait := env ensureTraitNamed: 'SomeTrait classTrait'.
	self assert: (env ask traitNamed: 'SomeTrait classTrait') equals: trait.
	
	env := RGEnvironment new.
	trait := env ensureClassNamed: 'SomeTrait'.
	self assert: (env ask traitNamed: 'SomeTrait') equals: nil.