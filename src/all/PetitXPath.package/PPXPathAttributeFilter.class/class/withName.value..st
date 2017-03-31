instance creation
withName: nameString value: valueString
	^self basicNew 
		initializeName: nameString value: valueString;
		yourself  