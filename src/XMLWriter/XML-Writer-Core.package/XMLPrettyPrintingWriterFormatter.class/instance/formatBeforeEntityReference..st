formatting
formatBeforeEntityReference: anEntityReferenceWriter
	anEntityReferenceWriter isParameter
		ifTrue: [self writeLineBreak]