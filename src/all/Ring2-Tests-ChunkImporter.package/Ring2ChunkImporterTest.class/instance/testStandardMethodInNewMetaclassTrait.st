tests
testStandardMethodInNewMetaclassTrait

	| importer trait method code | 
	
	" EXPECTED FAILURE "
	"This test currently needs to fail because the CodeImporter gives only original behavior name and #isMata. 
	We do not know that the behavior was supposed to be classTrait."
	
	importer := RGChunkImporter new.
	
	code := '!SomeTrait classTrait methodsFor: ''some protocol'' stamp: ''GuillermoPolito 5/2/2012 13:35''!someMethod
	^true'.
	
	importer fileInFrom: code readStream.

	trait := importer environment ask behaviorNamed: #SomeTrait.
	method := trait metaclass methodNamed: #someMethod.
	
	self assert: trait isTrait.
	self assert: trait classTrait isMetaclassTrait.
	self assert: method notNil.
	self assert: method isRingResolved.
	self assert: (method hasResolvedAll: #(name protocol sourceCode author time)).
	
	self assert: method name equals: #someMethod.
	self assert: method protocol name equals: 'some protocol'.
	self assert: method author equals: 'GuillermoPolito'.
	self assert: method time equals: ('5/2/2012 13:35' asDateAndTime).
	self assert: method sourceCode equals: 'someMethod
	^true'.