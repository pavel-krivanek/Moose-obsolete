enumerating by reference version
selectFromReferenceVersionCollectionAndPresentInTheFirstSpecifiedVersion: aCollection
	"returns the history made by the specified versions"
	
	^self
		selectFromReferenceVersionCollection: aCollection
		andPresentInReferenceVersion: aCollection first