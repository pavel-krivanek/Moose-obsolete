as yet unclassified
testIntersect
self
	assert: ((GLine a: 2 b: -3 c: 0.5) intersect: (GLine a: 1 b: 1 c: -2))
	equals: 1.1 @ 0.9