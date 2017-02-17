as yet unclassified
testComment4
	super testComment4.
	self assert: result class equals: PJTraditionalCommentsNode.
 	self assert: (result comment) equals: ' comment ' .
