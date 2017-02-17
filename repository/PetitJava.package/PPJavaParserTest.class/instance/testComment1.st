as yet unclassified
testComment1 
	super testComment1.
	self assert: result class equals: PJEndOfLineCommentsNode.
	self assert: (result comment ) equals: '' .