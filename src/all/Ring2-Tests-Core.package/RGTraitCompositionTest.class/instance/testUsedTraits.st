tests
testUsedTraits
	| traitComposition env trait1 trait2 trait3 trait4 transformation2 transformation3 usedTraits |
	traitComposition := RGTraitComposition unnamed.
	env := traitComposition environment.
	trait1 := env ensureTraitNamed: #SomeTrait1.
	trait2 := env ensureTraitNamed: #SomeTrait2.
	trait3 := env ensureTraitNamed: #SomeTrait3.
	trait4 := env ensureTraitNamed: #SomeTrait4.
	traitComposition addTransformation: trait1.
	transformation2 := RGTraitAlias parent: traitComposition.
	transformation2 subject: trait2.
	traitComposition addTransformation: transformation2.
	self assert: traitComposition transformations size equals: 2.
	transformation3 := RGTraitExclusion
		parent: traitComposition.
	transformation3 subject: trait3.
	traitComposition addTransformation: transformation3.
	self assert: traitComposition transformations size equals: 3.
	usedTraits := traitComposition usedTraits.
	self assert: usedTraits size equals: 3.
	self
		assert:
			(usedTraits
				includesAll:
					{trait1.
					trait2.
					trait3})