tests
testMultipleMixedChunksInStrangeOrder

	| importer class method | 
	
	importer := RGChunkImporter new.
	
	importer fileInFrom: '!SomeClass methodsFor: ''some protocol'' stamp: ''GuillermoPolito 5/2/2012 13:35''!
someMethod
	^true! !
Object subclass: #SomeClass!' readStream.

	class := importer environment ask behaviorNamed: #SomeClass.
	self assert: class notNil.
	self assert: class superclass name = #Object.
	method := class methodNamed: #someMethod.
	self assert: method notNil.
	self assert: (method sourceCode endsWith: '^true')

	