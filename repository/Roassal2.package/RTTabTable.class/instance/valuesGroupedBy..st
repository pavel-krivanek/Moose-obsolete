accessing
valuesGroupedBy: aSymbol
	^ (self dictionaryValues groupedBy: [ :each | each at: aSymbol ]) asDictionary