queries - tags
methodsTaggedWith: aSymbol

	^ self localMethods select: [ :each | each isTaggedWith: aSymbol ]