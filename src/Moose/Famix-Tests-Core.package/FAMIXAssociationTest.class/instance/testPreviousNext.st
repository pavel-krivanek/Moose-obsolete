tests
testPreviousNext
	| association1 association2 |
	association1 := FAMIXAssociation new.
	association2 := FAMIXAssociation new.
	association1 previous: association2.
	self assert: association1 previous equals: association2.
	self assert: association2 next equals: association1