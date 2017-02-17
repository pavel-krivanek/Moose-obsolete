enumerating by reference version
selectFromReferenceVersionCollectionAndPresentInTheLastSpecifiedVersion: aCollection
	"returns the history made by the specified versions"
	
	^self
		selectFromReferenceVersionCollection: aCollection
		andPresentInReferenceVersion: aCollection last