tests
testStandardClass

	| importer class | 
	
	importer := RGChunkImporter new.
	
	importer fileInFrom: 'Object subclass: #SomeClass
			instanceVariableNames: ''''
			classVariableNames: ''''
			poolDictionaries: ''''
			category: ''SomePackage''!' readStream.

	class := importer environment ask behaviorNamed: #SomeClass.
	self assert: class instVarNames isEmpty.
	self assert: (class hasResolved: #layout).
	self assert: (class layout hasResolved: #slots).
	self assert: (class hasResolved: #classVariables).
	self assert: (class classVariables isEmpty).
	self assert: (class hasResolved: #sharedPools).
	self assert: (class sharedPoolNames isEmpty).
	self assert: class category equals: #SomePackage.
