as yet unclassified
testAsLine1
|line|
	line := (GSegment with:  -2 @ 4 with: 2 @ 4) asLine .
	self assert: line a equals: 0.
	self assert: line b equals: 1.
	self assert: line c equals: -4.