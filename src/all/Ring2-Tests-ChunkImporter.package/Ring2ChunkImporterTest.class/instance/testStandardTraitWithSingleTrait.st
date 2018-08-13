tests
testStandardTraitWithSingleTrait

	| importer trait usedTrait| 
	
	importer := RGChunkImporter new.
	
	importer fileInFrom: 'Trait named: #TClass
	uses: TBehaviorCategorization
	category: ''Traits-Kernel-Traits''' readStream.

	trait := importer environment ask behaviorNamed: #TClass.
	self assert: trait notNil.
	self assert: trait traitComposition transformations notEmpty.
	usedTrait := trait traitComposition transformations first.
	self assert: usedTrait name = #TBehaviorCategorization.
	self assert: (importer environment ask behaviorNamed: #TBehaviorCategorization) notNil.
	self assert: trait category equals: 'Traits-Kernel-Traits'.
