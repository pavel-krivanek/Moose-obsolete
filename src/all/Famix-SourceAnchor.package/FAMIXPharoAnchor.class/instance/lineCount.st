accessing
lineCount
	^ self sourceText ifNotNil: #lineCount ifNil: [ self notExistentMetricValue ]