as yet unclassified
testComment7
	super testComment7.
	self assert: result class equals: PJTraditionalCommentsNode .
	self assert: (result comment) equals: '*     * @param args      * @return void     '.