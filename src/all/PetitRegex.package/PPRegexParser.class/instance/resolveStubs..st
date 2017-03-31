private
resolveStubs: aParser
	"In this post-processing step we need to fix the quantifiers."
	
	aParser nextSets keysAndValuesDo: [ :start :follow |
		(start isKindOf: PPLimitedRepeatingParser) ifTrue: [
			| limit |
			limit := follow collect: [ :each | 
				each isNil
					ifTrue: [ nil asParser end ]
					ifFalse: [ each ] ].
			start setLimit: (limit size = 1
				ifTrue: [ limit anyOne ]
				ifFalse: [ PPChoiceParser withAll: limit ]) ].
			
		(start isKindOf: PPLimitedChoiceParser) ifTrue: [ 
			| limit |
			limit := follow collect: [ :each | 
				each isNil
					ifTrue: [ nil asParser end ]
					ifFalse: [ each ] ].
			start limit: (limit size = 1
				ifTrue: [ limit anyOne and ]
				ifFalse: [ (PPChoiceParser withAll: limit) and ]) ].
	].
	^ aParser