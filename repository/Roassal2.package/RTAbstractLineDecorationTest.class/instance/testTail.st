tests
testTail
	| tail line edge trachelShape |
	tail := RTLineTail shape: RTSimpleArrow.
	line := RTArrowedLine new head: tail.
	edge := line edgeFrom: from to: to.
	trachelShape := tail trachelShapeFor: edge.
	self assert: trachelShape to = (0 @ 0).
	from translateTo: 100 @ -100.
	tail updateFor: edge trachelShape: trachelShape.
	self assert: trachelShape to = (100 @ -100)