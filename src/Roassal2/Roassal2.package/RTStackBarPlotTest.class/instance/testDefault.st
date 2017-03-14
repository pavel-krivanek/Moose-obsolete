tests
testDefault

	| b |
	b := RTStackBarPlot new.
	self assert: b height equals: 20.
	self assert: (b createShapeBuilder current height rtValue: RTElement new) equals: 20.