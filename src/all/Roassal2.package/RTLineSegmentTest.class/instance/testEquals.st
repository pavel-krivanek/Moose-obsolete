tests
testEquals
	| anotherX |
	anotherX := RTLineSegment from: lineX from to: lineX to.
	self assert: anotherX equals: lineX.
	self assert: anotherX = lineX.
	self assert: anotherX hash equals: lineX hash.

	self deny: lineX = lineY