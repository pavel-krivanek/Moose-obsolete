private
getIndexOf: aSubstring in: aString startingAt: startIndex 
	"Finds the first occurance of aSubstring in aString, except of those inside C-style strings" 
	 
	| finished lastIndex index | 
	finished := False. 
	lastIndex := startIndex - 1. 
	[finished = False] 
		whileTrue: 
			[index := aString 
				indexOfSubCollection: aSubstring 
				startingAt: lastIndex + 1. 
			index = 0 
				ifTrue: [finished := True] 
				ifFalse: 
					[(self 
						insideString: aString 
						startingAt: index 
						length: aSubstring size) = False 
						ifTrue: [^index] 
						ifFalse: [lastIndex := index]]]. 
	^0