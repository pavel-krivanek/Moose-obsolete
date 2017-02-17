private
switch: matrix caseCoercion: coercionBlock caseMatrix: matrixBlock
	
	^(matrix isKindOf: MalMatrixCoercion)
		ifTrue: [coercionBlock value]
		ifFalse: [matrixBlock value]