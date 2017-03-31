utilities
assert: aParser fail: aCollection end: anInteger
	| stream result context |
	self 
		assert: aParser isPetitParser
		description: 'Parser invalid'.
	stream := aCollection asPetitStream.
	context := self context.
	
	
	result := aParser parse: stream withContext: context.
	self 
		assert: result isPetitFailure
		description: 'Parser did not fail'.
	self
		assert: context position = anInteger
		description: 'Parser failed at wrong position'.
	^ result