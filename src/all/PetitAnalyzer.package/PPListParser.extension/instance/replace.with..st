*petitanalyzer-transforming
replace: aParser with: anotherParser
	super replace: aParser with: anotherParser.
	parsers keysAndValuesDo: [ :index :parser |
		parser == aParser
			ifTrue: [ parsers at: index put: anotherParser ] ]