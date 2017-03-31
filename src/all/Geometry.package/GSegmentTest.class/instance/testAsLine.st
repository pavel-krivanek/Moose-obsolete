as yet unclassified
testAsLine
|line|
	line := (GSegment with:  1 @ 3 with: 3 @ 0) asLine .
	self assert: line a equals: 3.
	self assert: line b equals: 2.
	self assert: line c equals: -9.