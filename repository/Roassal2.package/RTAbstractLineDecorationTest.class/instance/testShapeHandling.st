tests
testShapeHandling
	| head |
	head := RTLineHead shape: RTEmptyArrow.
	self assert: head trachelShapeClass = TREmptyArrowHeadShape