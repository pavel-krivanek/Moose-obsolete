tests
testStandardMetaclassTraitWithMultipleTraits

	| importer trait usedTraits | 
	
	importer := RGChunkImporter new.
	
	importer fileInFrom: 'TClass classTrait
	uses: TClassDescription classTrait + TComposingDescription classTrait + TTransformationCompatibility classTrait' readStream.

	trait := importer environment ask behaviorNamed: #'TClass classTrait'.
	self assert: trait notNil.
	self assert: trait isMetaclassTrait.
	self assert: trait traitComposition transformations notEmpty.
	usedTraits := trait traitComposition transformations.
	self assert: (usedTraits allSatisfy: [:each | each isTrait]).
	self assert: (usedTraits collect: #name) asArray equals: #('TClassDescription classTrait' 'TComposingDescription classTrait' 'TTransformationCompatibility classTrait').

	
