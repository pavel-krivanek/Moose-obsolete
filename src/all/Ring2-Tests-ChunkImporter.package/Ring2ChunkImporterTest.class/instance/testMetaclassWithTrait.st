tests
testMetaclassWithTrait

	| importer class | 
	
	importer := RGChunkImporter new.
	importer fileInFrom: 'SomeClass class
	uses: SomeTrait classTrait
	instanceVariableNames: ''''' readStream.
	class := importer environment ask behaviorNamed: 'SomeClass class'.
	self assert: class notNil.
	self assert: class isMetaclass.
	self assert: class instVarNames isEmpty.
	self assert: (importer environment ask behaviorNamed: 'SomeClass') notNil.
	self assert: (importer environment ask behaviorNamed: 'SomeTrait classTrait') notNil.
	self assert: (importer environment ask behaviorNamed: 'SomeTrait') notNil.
	self assert: class traitComposition transformations size equals: 1.
	self assert: class traitComposition transformations first name equals: 'SomeTrait classTrait'.
	self assert: class traitComposition transformations first isTrait.

