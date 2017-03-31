auxiliary
assertSends: description in: collector
	| emptyIndexes ivarName ivarInterface extractedInterface ivarIndex anArray |
	anArray := collector typingResults.
	emptyIndexes := (1 to: self class allInstVarNames size) asOrderedCollection.
	description
		do:
			[:desc | 
			ivarName := desc first.
			ivarInterface := desc at: 2.
			ivarIndex := collector absoluteIndexForVar: ivarName.
			extractedInterface := collector sendsTo: ivarName.
			self assert: extractedInterface size = ivarInterface size.
			self
				assert:
					(extractedInterface allSatisfy: [:each | ivarInterface includes: each]).
			emptyIndexes remove: ivarIndex].
	self
		emptyInterface: anArray
		atIndexes: emptyIndexes