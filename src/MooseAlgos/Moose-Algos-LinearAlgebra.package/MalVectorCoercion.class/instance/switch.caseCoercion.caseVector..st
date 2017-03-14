private
switch: matrix caseCoercion: coercionBlock caseVector: vectorBlock
	
	^(matrix isKindOf: MalVectorCoercion)
		ifTrue: [coercionBlock value]
		ifFalse: [vectorBlock value]