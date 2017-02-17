importing - filters
importEntityWithDependents: aSymbol

	entitiesToBeExtracted add: aSymbol ; addAll: (entityDependencies at: aSymbol ).

	