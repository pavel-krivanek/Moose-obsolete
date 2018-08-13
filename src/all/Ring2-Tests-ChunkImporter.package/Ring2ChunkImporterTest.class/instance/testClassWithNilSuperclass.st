tests
testClassWithNilSuperclass

	| importer class | 
	
	importer := RGChunkImporter new.
	
	importer fileInFrom: 'SomeClass subclass: #SomeClass
	instanceVariableNames: ''''
	classVariableNames: ''''
	package: ''SomePackage''.
SomeClass superclass: nil!' readStream.

	class := importer environment ask behaviorNamed: #SomeClass.
	self assert: class notNil.
	self assert: class instVarNames isEmpty.
	self assert: class classVarNames isEmpty.
	self assert: class package name equals: 'SomePackage'.
