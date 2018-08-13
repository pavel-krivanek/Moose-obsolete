tests
testStandardMetaclass

	| importer class | 
	
	importer := RGChunkImporter new.
	importer fileInFrom: 'SomeClass class
	instanceVariableNames: ''''' readStream.
	class := importer environment ask behaviorNamed: 'SomeClass class'.
	self assert: class notNil.
	self assert: class isMetaclass.
	self assert: class instVarNames isEmpty.
	self assert: (importer environment ask behaviorNamed: 'SomeClass') notNil.

	importer := RGChunkImporter new.
	importer fileInFrom: 'SomeClass class
	instanceVariableNames: ''var1 var2 var3''' readStream.
	class := importer environment ask behaviorNamed: 'SomeClass class'.
	self assert: class notNil.
	self assert: class isMetaclass.
	self assert: class instVarNames equals: #(var1 var2 var3).
