auxiliary
denyAssignments: description in: collector
	| emptyIndexes ivarName ivarInterface extractedInterface ivarIndex anArray |
	anArray := collector typingResults.
	emptyIndexes := (1 to: self class allInstVarNames size) asOrderedCollection.
	description
		do:
			[:desc | 
			ivarName := desc first.
			ivarInterface := desc at: 2.
			ivarIndex := collector absoluteIndexForVar: ivarName.
			extractedInterface := collector assignmentsTo: ivarName.
			ivarInterface
				do: [:each | self deny: (extractedInterface includes: each)].
			emptyIndexes remove: ivarIndex].
	self
		emptyAssigment: anArray
		atIndexes: emptyIndexes