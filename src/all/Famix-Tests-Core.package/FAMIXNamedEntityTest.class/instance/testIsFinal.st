tests
testIsFinal
	| entity |
	entity :=self actualClass new.
	entity isFinal: true.
	self assert: entity isFinal