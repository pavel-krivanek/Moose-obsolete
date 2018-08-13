tests
testTraitAlias

	| env traitAlias |
	
	env := RGEnvironment new.
	env backend: (RGReadOnlyImageBackend for: env).
	
	traitAlias := (MOPTestClassD traitComposition transformations first) asRingMinimalDefinitionIn: env.
	self assert: traitAlias isTraitAlias.
	self assert: traitAlias subject name equals: #Trait2.
	self assert: traitAlias aliases size equals: 1.
	self assert: traitAlias aliases first key == #c3.
	self assert: traitAlias aliases first value == #c2.	
	
	
	