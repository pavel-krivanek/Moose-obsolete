as yet unclassified
testAsLine2
|line|
	line := (GSegment with:  1 @ 3 with: 1 @ 0) asLine .
	self assert: line a equals: 1.
	self assert: line b equals: 0.
	self assert: line c equals: -1.