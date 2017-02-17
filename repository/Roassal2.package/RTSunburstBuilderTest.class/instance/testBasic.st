tests
testBasic
	| b |
	b := RTSunburstBuilder new.
	self assert: b layout layout class equals: RTSunburstConstantWidthLayout.
	self assert: b shape current class equals: RTArc.
	self assert: b elements isCollection.