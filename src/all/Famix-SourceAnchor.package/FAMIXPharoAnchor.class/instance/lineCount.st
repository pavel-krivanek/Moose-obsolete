accessing
lineCount
	^ self sourceText notNil 
		ifTrue: [ self sourceText lineCount ]
		ifFalse: [ self notExistentMetricValue ]
	