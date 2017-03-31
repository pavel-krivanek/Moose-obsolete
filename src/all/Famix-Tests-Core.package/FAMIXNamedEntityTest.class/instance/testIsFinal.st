tests
testIsFinal
	| entity |
	entity := FAMIXNamedEntity new.
	entity isFinal: true.
	self assert: entity isFinal