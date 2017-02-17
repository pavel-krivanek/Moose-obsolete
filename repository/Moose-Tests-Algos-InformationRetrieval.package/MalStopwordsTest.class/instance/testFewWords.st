running
testFewWords
	sw := MalStopwords fromString: 'and the super of a'.
	self assert: sw size equals: 5.
	^ sw