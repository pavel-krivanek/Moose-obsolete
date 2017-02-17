as yet unclassified
testComment6
	super testComment6.
	self assert: result class equals: PJTraditionalCommentsNode.
	self assert: (result comment) equals: ' this comment /* // /** ends here: ' .

