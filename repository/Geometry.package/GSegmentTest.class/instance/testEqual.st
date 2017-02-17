as yet unclassified
testEqual
	|segm1 segm2 |
	segm1 := GSegment with: 1@2 with: 3@4.
	segm2 := GSegment with: 0@0 with: 3@3.

	self assert: (segm1 asLine = (segm2 asLine))
	equals:false