test
testDeterminant
	| matrix |
	matrix := MalArrayMatrix rows: 3 columns: 3.
	self assertBlock: [ matrix determinant ] raises: AssertionFailure.
	matrix := MalArrayMatrix rows: 2 columns: 2 withAll: #(3 6 9 2).
	self assert: matrix determinant equals: -48