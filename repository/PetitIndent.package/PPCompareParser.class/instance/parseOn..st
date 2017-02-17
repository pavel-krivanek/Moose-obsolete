parsing
parseOn: context
	^ (compareBlock value: context) ifTrue: [  
		compareBlock asString
	] ifFalse: [  
		PPFailure message: message context: context
	]