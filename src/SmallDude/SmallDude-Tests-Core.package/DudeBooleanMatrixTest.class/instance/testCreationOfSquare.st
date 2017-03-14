testing
testCreationOfSquare
	| matrix elemCount |
	matrix := DudeBooleanMatrix rows: 11 columns: 11.
	self assert: matrix ~= nil.
	self assert: matrix rowSize equals: 11.
	self assert: matrix columnSize equals: 11.
	elemCount := 0.
	matrix withDiagonalsDo: [ :diag :diagNo | elemCount := elemCount + diag size ].
	self assert: elemCount equals: 121