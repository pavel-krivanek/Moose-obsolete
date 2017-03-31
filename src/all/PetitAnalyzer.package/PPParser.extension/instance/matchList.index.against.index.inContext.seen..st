*petitanalyzer-matching
matchList: matchList index: matchIndex against: parserList index: parserIndex inContext: aDictionary seen: aSet
	| parser currentIndex currentDictionary currentSeen parsers |
	matchList size < matchIndex
		ifTrue: [ ^ parserList size < parserIndex ].
	parser := matchList at: matchIndex.
	parser class = PPListPattern ifTrue: [
		currentIndex := parserIndex - 1.
		[ currentDictionary := aDictionary copy.
		currentSeen := aSet copy.
		parserList size < currentIndex or: [ 
			parsers := parserList copyFrom: parserIndex to: currentIndex.
			(currentDictionary at: parser ifAbsentPut: [ parsers ]) = parsers and: [ 
				(self
					matchList: matchList
					index: matchIndex + 1
					against: parserList
					index: currentIndex + 1
					inContext: currentDictionary
					seen: currentSeen)
					ifTrue: [ 
						currentDictionary keysAndValuesDo: [ :key :value | aDictionary at: key put: value ].
						^ true ].
				false ] ] ] whileFalse: [ currentIndex := currentIndex + 1 ].
		^ false ].
	parserList size < parserIndex
		ifTrue: [ ^ false ].
	(parser match: (parserList at: parserIndex) inContext: aDictionary seen: aSet)
		ifFalse: [ ^ false ].
	^ self
		matchList: matchList
		index: matchIndex + 1
		against: parserList
		index: parserIndex + 1
		inContext: aDictionary
		seen: aSet