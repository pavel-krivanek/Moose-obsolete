as yet unclassified
testHasOnOneSideAnd

self 
	assert:((Rectangle origin: -22 @ -42 corner: 62 @ 42) hasOnOneSide: -9 @ 42 and: 30 @ 42)
	equals: true. 
self 
	assert:((Rectangle origin: -22 @ -42 corner: 62 @ 42) hasOnOneSide: -22 @ 30 and: -22 @ -10)
	equals: true. 
self 
	assert:((Rectangle origin: -22 @ -42 corner: 62 @ 42) hasOnOneSide: -9 @ 42 and: -22 @ -10)
	equals: false. 