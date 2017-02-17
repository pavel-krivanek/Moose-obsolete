nesting
poppedByTokenizer: aTokenizer
	totalOpenIncludeSections
		ifNotNil: [
			totalOpenIncludeSections = 0
				ifFalse: [aTokenizer driver handleImproperParameterEntityNesting]]