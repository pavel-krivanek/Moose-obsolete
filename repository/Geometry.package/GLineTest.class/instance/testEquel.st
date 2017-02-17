as yet unclassified
testEquel
self
	assert: ((GLine a:1 b:1 c: -13)= (GLine a:6 b:6 c: -78))
	equals: true.
self
	assert: ((GLine a:0 b:1 c: -13)= (GLine a:0 b:6 c: -78))
	equals: true.
self
	assert: ((GLine a:1 b:1 c: -13)= (GLine a:1 b:6 c: -78))
	equals: false.
self
	assert: ((GLine a:1 b:1 c: -13)= (GLine a:6 b:6 c: -7))
	equals: false.
self
	assert: ((GLine a:1 b:0 c: -13)= (GLine a:6 b:0 c: -78))
	equals: true.
self
	assert: ((GLine a:0 b:1 c: 0)= (GLine a:0 b:6 c: 0))
	equals: true.
self
	assert: ((GLine a:1 b:0 c: 0)= (GLine a:1 b:0 c: 0))
	equals: true.
