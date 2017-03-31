auxiliary
emptyAssigment: anArray atIndexes: indexCollection
	indexCollection
		do: [:index | self assert: (anArray at: index) hasEmptyAssignments]