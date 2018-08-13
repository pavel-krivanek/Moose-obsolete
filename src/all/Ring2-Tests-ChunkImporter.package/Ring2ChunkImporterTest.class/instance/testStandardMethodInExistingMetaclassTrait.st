tests
testStandardMethodInExistingMetaclassTrait

	| importer trait method code | 
	
	importer := RGChunkImporter new.

	trait := importer environment ensureMetaclassTraitNamed: #'SomeTrait classTrait'.

	code := '!SomeTrait classTrait methodsFor: ''some protocol'' stamp: ''GuillermoPolito 5/2/2012 13:35''!someMethod
	^true'.
	
	importer fileInFrom: code readStream.

	method := trait methodNamed: #someMethod.
	
	self assert: (trait isMetaclassTrait).
	self assert: method notNil.
	self assert: method isRingResolved.
	self assert: (method hasResolvedAll: #(name protocol sourceCode author time)).
	
	self assert: method name equals: #someMethod.
	self assert: method protocol equals: 'some protocol'.
	self assert: method author equals: 'GuillermoPolito'.
	self assert: method time equals: ('5/2/2012 13:35' asDateAndTime).
	self assert: method sourceCode equals: 'someMethod
	^true'.