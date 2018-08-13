tests
testStandardMetaclassTrait

	| importer trait | 
	
	importer := RGChunkImporter new.
	
	importer fileInFrom: 'TBehavior classTrait
	uses: {}' readStream.

	trait := importer environment ask behaviorNamed: #'TBehavior classTrait'.
	self assert: trait notNil.
	self assert: trait isMetaclassTrait.
	self assert: trait traitComposition transformations isEmpty.
