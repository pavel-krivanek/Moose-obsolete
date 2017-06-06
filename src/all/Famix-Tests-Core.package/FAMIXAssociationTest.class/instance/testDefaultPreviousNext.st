tests
testDefaultPreviousNext
	| association |
	association := self actualClass new.
	self assert: association previous isNil.
	self assert: association next isNil