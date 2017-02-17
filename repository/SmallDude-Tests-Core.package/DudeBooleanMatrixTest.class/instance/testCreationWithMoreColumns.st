testing
testCreationWithMoreColumns
	| matrix elemCount |
	matrix := DudeBooleanMatrix rows: 10 columns: 20.
	self assert: matrix ~= nil.
	self assert: matrix rowSize equals: 10.
	self assert: matrix columnSize equals: 20.
	elemCount := 0.
	matrix withDiagonalsDo: [ :diag :diagNo | elemCount := elemCount + diag size ].
	self assert: elemCount equals: 200