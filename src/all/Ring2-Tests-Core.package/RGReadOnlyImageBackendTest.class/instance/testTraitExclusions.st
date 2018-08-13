tests
testTraitExclusions

	| env traitExclusion |
	
	env := RGEnvironment new.
	env backend: (RGReadOnlyImageBackend for: env).
	
	traitExclusion := (MOPTestClassB traitComposition transformations second) asRingMinimalDefinitionIn: env.
	self assert: traitExclusion isTraitExclusion.
	self assert: traitExclusion subject name equals: #Trait2.
	self assert: traitExclusion exclusions size equals: 1.
	self assert: traitExclusion exclusions first equals: #c.

	
	
	