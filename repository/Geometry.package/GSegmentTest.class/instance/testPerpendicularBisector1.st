as yet unclassified
testPerpendicularBisector1
|line|
	line := (GSegment with: 1 @ 3 with: -1 @ 1) perpendicularBisector. 
		self assert: line a equals: -2.
		self assert: line b equals: -2.
		self assert: line c equals: 4.