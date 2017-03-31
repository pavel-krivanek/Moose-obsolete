tokens
keyword

	| keywordParsers |
	
	keywordParsers := keywords keysSortedSafely 
								collect: [:eachKey | keywords at: eachKey ].
	
	^(keywordParsers reduce: [ :a :b | a / b ]) token trimBlanks
	
