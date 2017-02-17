grammar-keywords
keyword

		| keywordParsers |
		
		keywordParsers := keywords keys asSortedCollection collect: [:eachKey | keywords at: eachKey ].
		^ self asToken: ( (keywordParsers reduce: [ :a :b | a / b ]) )

	"Modified (format): / 21-04-2015 / 15:27:29 / Jan Vrany <jan.vrany@fit.cvut.cz>"