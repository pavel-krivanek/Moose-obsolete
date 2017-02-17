*petitanalyzer-private
cycleSet: aDictionary
	| firstSet |
	1 to: parsers size do: [ :index |
		firstSet := aDictionary at: (parsers at: index).
		(firstSet anySatisfy: [ :each | each isNullable ])
			ifFalse: [ ^ parsers copyFrom: 1 to: index ] ].
	^ parsers