tests
testStandardMetaclassTraitWithSingleTrait

	| importer trait usedTrait | 
	
	importer := RGChunkImporter new.
	
	importer fileInFrom: 'TClass classTrait
	uses: TBehaviorCategorization classTrait' readStream.

	trait := importer environment ask behaviorNamed: #'TClass classTrait'.
	self assert: trait notNil.
	self assert: trait isMetaclassTrait.
	self assert: trait traitComposition transformations notEmpty.
	usedTrait := trait traitComposition transformations first.
	self assert: usedTrait name = #'TBehaviorCategorization classTrait'.
	self assert: (importer environment ask behaviorNamed: #'TBehaviorCategorization classTrait') notNil.

