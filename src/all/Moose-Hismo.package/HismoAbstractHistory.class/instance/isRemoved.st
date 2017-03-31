lifespan testing
isRemoved
	"answers whether the last version of the history is not present in the last reference version"

	^self last referenceVersion < self referenceHistory last referenceVersion