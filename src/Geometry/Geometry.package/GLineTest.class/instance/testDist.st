as yet unclassified
testDist
self
	assert: ((GLine a:1 b:0 c: -7)dist: 7 @ 0)
	equals: 0.
self
	assert: ((GLine a:1 b:0 c: -7)dist: 7 @ 7)
	equals: 0.
self
	assert: ((GLine a:1 b:0 c: -7)dist: 0 @ 0)
	equals: 7.

	