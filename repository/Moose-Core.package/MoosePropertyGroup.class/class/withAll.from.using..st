instance creation
withAll: aCollection from: aMooseGroup using: aSymbolOrBlock

	^ (self withAll: aCollection) originalGroup: aMooseGroup; property: aSymbolOrBlock; yourself