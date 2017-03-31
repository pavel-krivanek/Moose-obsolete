tests
testDefaultPreviousNext
	| association |
	association := FAMIXAssociation new.
	self assert: association previous isNil.
	self assert: association next isNil