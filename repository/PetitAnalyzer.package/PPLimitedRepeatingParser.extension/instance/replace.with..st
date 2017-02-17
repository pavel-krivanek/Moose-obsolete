*petitanalyzer-transforming
replace: aParser with: anotherParser
	super replace: aParser with: anotherParser.
	limit == aParser ifTrue: [ limit := anotherParser ]