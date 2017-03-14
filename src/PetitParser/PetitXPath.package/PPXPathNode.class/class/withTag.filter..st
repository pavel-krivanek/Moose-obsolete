instance creation
withTag: aString filter: anObject
	^self basicNew 
		initializeTag: aString filter: anObject;
		yourself