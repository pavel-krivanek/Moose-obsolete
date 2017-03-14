accessing
xmlnsAt: aPrefix ifAbsent: aBlock
	^ self xmlnsDeclarations at: aPrefix ifAbsent: aBlock