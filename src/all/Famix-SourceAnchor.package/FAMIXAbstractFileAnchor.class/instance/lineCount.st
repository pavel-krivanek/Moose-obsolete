accessing
lineCount
	^ self hasSourceText 
		ifTrue: [ self sourceText lineCount ]
		ifFalse: [ self notExistentMetricValue ]
	