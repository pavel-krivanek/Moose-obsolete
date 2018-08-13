tests
testTraitComposition

	| env traitComposition |
	
	env := RGEnvironment new.
	env backend: (RGReadOnlyImageBackend for: env).
	
	traitComposition := RGTestClass traitComposition asRingMinimalDefinitionIn: env.
	self assert: traitComposition isTraitComposition.
	self assert: traitComposition transformations size equals: 1.
	self assert: traitComposition transformations first name equals: #RGTestTrait.
	self assert: traitComposition transformations first isTrait.
	self assert: traitComposition transformations first isRGObject.
	
	self assert: traitComposition parent traitComposition equals: traitComposition.
	