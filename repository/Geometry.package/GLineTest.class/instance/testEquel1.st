as yet unclassified
testEquel1
self
	assert: ((GLine a:1 b:1 c: -13)= (GLine a:6 b:6 c: 0))
	equals: false.
self
	assert: ((GLine a:0 b:1 c: -13)= (GLine a:0 b:6 c: -78))
	equals: true.

	