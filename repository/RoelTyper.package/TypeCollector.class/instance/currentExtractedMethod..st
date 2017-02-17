accessing
currentExtractedMethod: anObject
	currentExtractedMethod := anObject.
	localTypingResults at: anObject put: ((1 to: anObject numTemps + 1) collect: [:each | ExtractedTypeForTmp 
					forTmpOffset: each ofCompiledMethod:  anObject inClass: anObject methodClass  ]) asArray 