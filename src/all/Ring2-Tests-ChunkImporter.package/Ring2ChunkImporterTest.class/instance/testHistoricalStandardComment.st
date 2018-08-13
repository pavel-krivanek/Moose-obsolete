tests
testHistoricalStandardComment

	| importer class comment code | 
	
	importer := RGChunkImporter new.
	
	code := self testingHistoricalCommentFor: #SomeClass.
	
	importer fileInFrom: code readStream.

	class := importer environment ask behaviorNamed: #SomeClass.
	comment := class comment.
	
	self assert: comment notNil.
	self assert: comment isComment.
	self assert: comment isRingResolved.
	self assert: (comment hasResolvedAll: #(content author time)).
	
	self assert: comment content equals: 'I''m a nice comment!, treat me well :).'.
	self assert: comment author equals: '<historical>'.
	self assert: comment time equals: DateAndTime new.
