accessing
xmlnsAt: aPrefix
	^ self xmlnsDeclarations at: aPrefix ifAbsent: ['']