querying
lineCount
	(endLine notNil and: [ startLine notNil ])
		ifTrue: [ ^ endLine - startLine + 1 ].

	"if no start/end position, use the comple text ..."
	^ self hasSourceText 
		ifTrue: [ self completeText lineCount ]
		ifFalse: [ self notExistentMetricValue ]
	