testing
testCreationOfSingleElement
	| matrix elemCount |
	matrix := DudeBooleanMatrix rows: 1 columns: 1.
	self assert: matrix ~= nil.
	self assert: matrix rowSize equals: 1.
	self assert: matrix columnSize equals: 1.
	elemCount := 0.
	matrix withDiagonalsDo: [ :diag :diagNo | elemCount := elemCount + diag size ].
	self assert: elemCount equals: 1