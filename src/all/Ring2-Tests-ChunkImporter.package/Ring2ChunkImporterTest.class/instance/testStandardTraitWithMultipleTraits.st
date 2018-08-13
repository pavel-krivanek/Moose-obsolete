tests
testStandardTraitWithMultipleTraits

	| importer trait usedTraits | 
	
	importer := RGChunkImporter new.
	
	importer fileInFrom: 'Trait named: #TClass
	uses: TClassDescription + TComposingDescription + TTransformationCompatibility
	category: ''Traits-Kernel''' readStream.

	trait := importer environment ask behaviorNamed: #TClass.
	self assert: trait notNil.
	self assert: trait traitComposition transformations notEmpty.
	usedTraits := trait traitComposition transformations.
	self assert: (usedTraits allSatisfy: [:each | each isTrait]).
	self assert: (usedTraits collect: #name) asArray equals: #(TClassDescription TComposingDescription TTransformationCompatibility).

	self assert: trait category equals: 'Traits-Kernel'.
