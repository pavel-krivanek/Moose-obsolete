tests
testStandardSubclasses

	| importer class | 
	
	importer := RGChunkImporter new.
	
	importer fileInFrom: 'Object subclass: #SomeClass!' readStream.

	class := importer environment ask behaviorNamed: #SomeClass.
	self assert: class superclass name equals: #Object.
	
