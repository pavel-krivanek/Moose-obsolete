tests
testMultipleClassChunksInStrangeOrder

	| importer class class2 | 
	
	importer := RGChunkImporter new.
	
	importer fileInFrom: 'SomeClass2 subclass: #SomeClass!
Object subclass: #SomeClass2!' readStream.

	class := importer environment ask behaviorNamed: #SomeClass.
	self assert: class notNil.
	self assert: class superclass name = #SomeClass2.

	class2 := importer environment ask behaviorNamed: #SomeClass2.
	self assert: class2 notNil.
	self assert: class2 superclass name = #Object.
	
	self assert: class superclass == class2.
