enumerating by reference version
selectFromReferenceVersionCollection: aCollection
	"returns the history made by the specified versions"
	
	| selectedHistories selectedHistory |
	selectedHistories := self createEmptyGroup.
	self entities
		do:
			[:each | 
			selectedHistory := each selectFromReferenceVersionCollection: aCollection.
			selectedHistory isEmpty
				ifFalse:
					[selectedHistories
						at: each mooseName
						ifAbsentPut: [selectedHistory]]].
	^selectedHistories