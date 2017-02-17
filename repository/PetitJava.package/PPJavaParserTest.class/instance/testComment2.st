as yet unclassified
testComment2
	super testComment2.
	self assert: result class equals: PJEndOfLineCommentsNode.
	self assert: (result comment ) equals: 'comment' .


