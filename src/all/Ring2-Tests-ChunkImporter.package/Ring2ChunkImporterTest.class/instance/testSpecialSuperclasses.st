tests
testSpecialSuperclasses

	| importer class | 
	
	importer := RGChunkImporter new.
	importer fileInFrom: 'SomeClass subclass: #SomeClass' readStream.
	class := importer environment ask behaviorNamed: #SomeClass.
	self assert: class notNil.
	self assert: class superclass equals: class.

	importer := RGChunkImporter new.
	importer fileInFrom: 'SomeClass subclass: #SomeClass.
	SomeClass superclass: nil.!' readStream.
	class := importer environment ask behaviorNamed: #SomeClass.
	self assert: class notNil.
	self assert: class superclass isNil.

	importer := RGChunkImporter new.
	importer fileInFrom: 'SomeClass subclass: #SomeClass.
	SomeOtherClass superclass: nil.!' readStream.
	" Only a DoIt, because  we specify different superclass. "
	class := importer environment ask behaviorNamed: #SomeClass.
	self assert: class isNil.
	importer doIts notEmpty.

	importer := RGChunkImporter new.
	importer fileInFrom: 'SomeClass subclass: #SomeClass.
	SomeClass superclass: self.!' readStream.
	" Only a DoIt, because  we do not specify superclass as nil. "
	class := importer environment ask behaviorNamed: #SomeClass.
	self assert: class isNil.
	importer doIts notEmpty.

	importer := RGChunkImporter new.
	importer fileInFrom: 'SomeClass subclass: #SomeClass.
	SomeClass yourself.
	SomeClass superclass: nil.!' readStream.
	" Only a DoIt, because we do not keep expected format "
	class := importer environment ask behaviorNamed: #SomeClass.
	self assert: class isNil.
	importer doIts notEmpty.