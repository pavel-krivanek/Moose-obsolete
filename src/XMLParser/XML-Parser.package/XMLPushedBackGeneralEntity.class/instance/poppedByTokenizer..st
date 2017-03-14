nesting
poppedByTokenizer: aTokenizer
	totalOpenElements
		ifNotNil: [
			totalOpenElements = 0
				ifFalse: [aTokenizer errorImproperGeneralEntityNesting]]