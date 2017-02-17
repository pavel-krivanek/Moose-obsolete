testing
testMetrics
	| file |
	file := FAMIXFile new.
	self assert: file numberOfLinesOfText isZero.
	self assert: file numberOfBytes isZero.
	self assert: file numberOfCharacters isZero.
	self assert: file numberOfKiloBytes isZero.
	self assert: file totalNumberOfLinesOfText isZero