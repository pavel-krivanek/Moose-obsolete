adding
transformAsBlockArg: anExtractedTypeForTmp 
	(localTypingResults at: anExtractedTypeForTmp compiledMethod) 
		at: anExtractedTypeForTmp tempOffset
		put: (ExtractedTypeForBlockArg 
				forOffset: anExtractedTypeForTmp tempOffset
				ofCompiledMethod: anExtractedTypeForTmp compiledMethod
				inClass: anExtractedTypeForTmp ivarClass)