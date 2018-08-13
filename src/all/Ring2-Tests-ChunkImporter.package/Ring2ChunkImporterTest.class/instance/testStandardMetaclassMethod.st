tests
testStandardMetaclassMethod

	| importer class method code | 
	
	importer := RGChunkImporter new.
	
	code := '!SomeClass class methodsFor: ''some protocol'' stamp: ''GuillermoPolito 5/2/2012 13:35''!someMethod
	^true'.
	
	importer fileInFrom: code readStream.

	class := importer environment ask behaviorNamed: #'SomeClass class'.
	method := class methodNamed: #someMethod.
	
	self assert: class isMetaclass.
	self assert: method isRingResolved.
	self assert: (method hasResolvedAll: #(name tags sourceCode author time)).
	
	self assert: method name equals: #someMethod.
	self assert: method protocol equals: 'some protocol'.
	self assert: method author equals: 'GuillermoPolito'.
	self assert: method time equals: ('5/2/2012 13:35' asDateAndTime).
	self assert: method sourceCode equals: 'someMethod
	^true'.