lifespan testing
isLateBorn
	"answers whether the first version of the history is not present in the first reference version"
	
	^self first referenceVersion
		> self referenceHistory first referenceVersion