as yet unclassified
testSideWhichHas

self assert:((Rectangle origin:  1 @ 3 corner: 3 @ 0) sideWhichHas: 1 @ 2.5)
	equals: (GSegment with: 1 @ 3 with: 1 @ 0)  