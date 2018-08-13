tests
testStandardTraitWithExclusions

	| importer trait usedTraits | 
	
	importer := RGChunkImporter new.
	
	importer fileInFrom: 'Trait named: #TClass
	uses: TClassDescription - {#msg1. #msg2}
	category: ''Traits-Kernel''' readStream.

	trait := importer environment ask behaviorNamed: #TClass.
	self assert: trait notNil.
	self assert: trait traitComposition transformations notEmpty.
	usedTraits := trait traitComposition transformations.
	self assert: usedTraits size equals: 1.
	self assert: usedTraits first subject name equals: 'TClassDescription'.
	self assert: usedTraits first exclusions asArray equals: #(msg1 msg2).
	
	self assert: trait category equals: 'Traits-Kernel'.
