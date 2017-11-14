tests
testIsUnparsed
	super testIsUnparsed.

	self assert: (self newNode ndata: 'test') isUnparsed.