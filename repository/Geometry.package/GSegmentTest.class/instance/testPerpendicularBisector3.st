as yet unclassified
testPerpendicularBisector3
|line|
	line := (GSegment with: 3 @ 0 with: 1 @ 3)  perpendicularBisector. 
		self assert: line a equals: -2.
		self assert: line b equals: 3.
		self assert: line c equals: -1/2.