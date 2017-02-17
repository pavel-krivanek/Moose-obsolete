auxiliary
empty: anArray atIndexes: indexCollection
	indexCollection do: [:index | self assert: (anArray at: index) isEmpty]