lifespan testing
isDeadLaterThanOrInReferenceVersion: aReferenceVersion
	"answers whether the last version of the history is present later than the aReferenceVersion"
	
	^self last referenceVersion >= aReferenceVersion