testing
testCreationWithMoreRows
	| matrix elemCount |
	matrix := DudeBooleanMatrix rows: 20 columns: 10.
	self assert: matrix ~= nil.
	self assert: matrix rowSize equals: 20.
	self assert: matrix columnSize equals: 10.
	elemCount := 0.
	matrix withDiagonalsDo: [ :diag :diagNo | elemCount := elemCount + diag size ].
	self assert: elemCount equals: 200