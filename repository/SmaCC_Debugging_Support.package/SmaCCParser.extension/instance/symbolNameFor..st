*SmaCC_Debugging_Support
symbolNameFor: anInteger
	^ self symbolNames at: anInteger ifAbsent: [ '?' ]