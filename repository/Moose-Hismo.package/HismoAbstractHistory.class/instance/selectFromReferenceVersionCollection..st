enumerating
selectFromReferenceVersionCollection: aCollection
	"returns the history made by the specified versions"
	
	^self
		select:
			[:eachVersion | aCollection includes: eachVersion referenceVersion]