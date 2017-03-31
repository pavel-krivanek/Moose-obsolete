lifespan testing
isDeadPriorToReferenceVersion: aReferenceVersion
	"answers whether the last version of the history is present prior to the aReferenceVersion"
	
	^self last referenceVersion < aReferenceVersion