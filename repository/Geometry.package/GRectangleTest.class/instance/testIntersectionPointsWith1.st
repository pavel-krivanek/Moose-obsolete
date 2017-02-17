as yet unclassified
testIntersectionPointsWith1
 	self assert:((Rectangle origin:  1 @ 3 corner: 3 @ 0) intersectionPointsWithLine: ((GSegment with: 0 @ 					3 with: 4 @ 1) asLine)) first
		  equals:  1 @ 2.5 .
	self assert:((Rectangle origin:  1 @ 3 corner: 3 @ 0) intersectionPointsWithLine: ((GSegment with: 0 @ 					3 with: 4 @ 1) asLine)) second
		  equals:  3 @ 1.5 