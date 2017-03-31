importing - filters
importAll: aCollectionOfSymbols

	aCollectionOfSymbols do: [:each | self importEntityWithDependents: each ].

	