accessing
xmlnsAt: aPrefix ifAbsentPut: aBlock
	^ self xmlnsDeclarations at: aPrefix ifAbsentPut: aBlock