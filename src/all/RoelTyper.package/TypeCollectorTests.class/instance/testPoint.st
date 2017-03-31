typing tests
testPoint
	| types xTypes yTypes |
	types := TypeCollector typeInstvarsOfClass: Point.
	xTypes := types at: #x.
	self assert: ((xTypes is: Number) or: [xTypes is: Integer]).
	yTypes := types at: #y.
	self assert: ((yTypes is: Number) or: [yTypes is: Integer])