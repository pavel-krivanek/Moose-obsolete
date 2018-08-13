tests
testMultipleChunks

	| importer class | 
	
	importer := RGChunkImporter new.
	
	importer fileInFrom: 'Object subclass: #SomeClass!
Object subclass: #SomeClass2!' readStream.

	class := importer environment ask behaviorNamed: #SomeClass.
	self assert: class notNil.
	self assert: class superclass name = #Object.

	class := importer environment ask behaviorNamed: #SomeClass2.
	self assert: class notNil.
	self assert: class superclass name = #Object.
