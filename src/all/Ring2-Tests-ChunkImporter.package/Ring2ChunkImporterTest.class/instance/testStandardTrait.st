tests
testStandardTrait

	| importer trait | 
	
	importer := RGChunkImporter new.
	
	importer fileInFrom: 'Trait named: #TBehavior
	uses: {}
	package: ''Traits-Kernel-Traits''' readStream.

	trait := importer environment ask behaviorNamed: #TBehavior.
	self assert: trait notNil.
	self assert: (trait isTrait and: [trait isMetaclassTrait not]).
	self assert: trait traitComposition transformations isEmpty.
	self assert: trait package name equals: 'Traits-Kernel-Traits'.
