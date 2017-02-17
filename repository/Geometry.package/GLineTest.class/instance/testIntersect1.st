as yet unclassified
testIntersect1
self
	assert: ((GLine a: 2 b: -3 c: 0.5) intersect: (GLine a: -2 b: -2 c: 4))
	equals: 1.1 @ 0.9