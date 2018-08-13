tests
testProtoObject

	| importer class | 
	
	importer := RGChunkImporter new.
	
	importer fileInFrom: 'ProtoObject subclass: #ProtoObject
	instanceVariableNames: ''''
	classVariableNames: ''''
	package: ''Kernel-Objects''.
ProtoObject superclass: nil!' readStream.

	class := importer environment ask behaviorNamed: #ProtoObject.
	self assert: class notNil.
	self assert: class superclass isNil.
	self assert: class instVarNames isEmpty.
	self assert: class classVarNames isEmpty.
	self assert: class package name equals: 'Kernel-Objects'.
