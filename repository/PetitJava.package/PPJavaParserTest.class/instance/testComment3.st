as yet unclassified
testComment3
	super testComment3.
	self assert: result class equals: PJEndOfLineCommentsNode .
 		self assert: (result comment ) equals: ' comment' .