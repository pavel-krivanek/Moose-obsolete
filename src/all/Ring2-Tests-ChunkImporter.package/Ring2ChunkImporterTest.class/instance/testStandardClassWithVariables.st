tests
testStandardClassWithVariables

	
	| importer class | 
	
	importer := RGChunkImporter new.
	
	importer fileInFrom: 'Object subclass: #SomeClass
			instanceVariableNames: ''var1 var2 var3''
			classVariableNames: ''ClassVar1 ClassVar2 ClassVar3''
			poolDictionaries: ''Pool1 Pool2 Pool3''
			category: ''SomePackage''!' readStream.

	class := importer environment ask behaviorNamed: #SomeClass.

	self assert: (class hasResolved: #layout).
	self assert: class instVarNames equals: #(var1 var2 var3).
	self assert: (class instVarNames allSatisfy: #isSymbol).

	self assert: (class hasResolved: #classVariables).
	self assert: class classVarNames equals: #(ClassVar1 ClassVar2 ClassVar3).
	self assert: (class instVarNames allSatisfy: #isSymbol).

	self assert: (class hasResolved: #sharedPools).
	self assert: class sharedPoolNames equals: #(Pool1 Pool2 Pool3).
	self assert: (class sharedPoolNames allSatisfy: #isSymbol).

	self assert: class category equals: #SomePackage.
	