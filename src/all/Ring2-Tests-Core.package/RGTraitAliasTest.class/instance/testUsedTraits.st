tests
testUsedTraits

	| traitAlias trait usedTraits | 
	
	traitAlias := RGTraitAlias unnamed.
	trait := traitAlias environment ensureTraitNamed: #SomeTrait.
	traitAlias subject: trait.
	usedTraits := traitAlias usedTraits.
	
	self assert: usedTraits size equals: 1.
	self assert: usedTraits anyOne equals: trait.
	
	self assert:  traitAlias trait equals: trait.