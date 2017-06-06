*Moose-RoassalPaintings
symbolsUsedInName
	| symbols nospace |
	symbols := self asOrderedCollection
		flatCollect: [ :each | 
			nospace := (each name
				piecesCutWhere: [ :a :b | 
					{Character space.
					$_} includes: a ])
				collect: [ :token | (token replaceAll: $_ with: Character space) trimRight trimLeft ].
			nospace
				flatCollect: [ :x | x piecesCutWhereCamelCase collect: [ :y | each -> (MalStemmer English stem: y) ] ] ].
	^ (symbols reject: [ :each | MooseUtilities stopWordList includes: each value ])
		groupedBy: #value
		affect: [ :assocCol | assocCol collect: #key ]