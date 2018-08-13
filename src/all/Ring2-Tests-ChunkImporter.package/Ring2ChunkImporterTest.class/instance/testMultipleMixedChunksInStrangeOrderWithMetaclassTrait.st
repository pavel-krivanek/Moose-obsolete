tests
testMultipleMixedChunksInStrangeOrderWithMetaclassTrait

	| importer trait method | 
	
	" EXPECTED FAILURE "
	"This test currently needs to fail because the CodeImporter gives only original behavior name and #isMata. 
	We do not know that the behavior was supposed to be classTrait."	
	
	importer := RGChunkImporter new.
	
	importer fileInFrom: '!TBehavior classTrait methodsFor: ''some protocol'' stamp: ''GuillermoPolito 5/2/2012 13:35''!
someMethod
	^true! !
Trait named: #TBehavior
	uses: {}
	category: ''Traits-Kernel-Traits''!' readStream.

	trait := importer environment ask behaviorNamed: #'TBehavior classTrait'.
	self assert: trait notNil.
	self assert: (trait isTrait and: [ trait isMetaclassTrait not ]).
	method := trait methodNamed: #someMethod.
	self assert: method notNil.
	self assert: (method sourceCode endsWith: '^true')

	