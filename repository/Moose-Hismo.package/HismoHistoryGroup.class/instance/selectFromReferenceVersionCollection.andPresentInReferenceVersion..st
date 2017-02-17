enumerating by reference version
selectFromReferenceVersionCollection: aCollection andPresentInReferenceVersion: aReferenceVersion
	"returns the history made by the specified versions"
	
	| selectedHistories selectedHistory entitiesPresentInTheLastSpecifiedVersion |
	selectedHistories := self createEmptyGroup.
	entitiesPresentInTheLastSpecifiedVersion := self entities
		select: [:each | each referenceVersions includes: aReferenceVersion].
	entitiesPresentInTheLastSpecifiedVersion
		do:
			[:each | 
			selectedHistory := each selectFromReferenceVersionCollection: aCollection.
			selectedHistory isEmpty
				ifFalse:
					[selectedHistories
						at: each mooseName
						ifAbsentPut: [selectedHistory]]].
	^selectedHistories