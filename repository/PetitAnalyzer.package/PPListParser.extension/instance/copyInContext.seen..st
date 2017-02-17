*petitanalyzer-matching
copyInContext: aDictionary seen: aSeenDictionary
	| copy copies |
	aSeenDictionary at: self ifPresent: [ :value | ^ value ].
	copy := aSeenDictionary at: self put: self copy.
	copies := OrderedCollection new.
	parsers do: [ :each |
		| result |
		result := each 
			copyInContext: aDictionary
			seen: aSeenDictionary.
		result isCollection
			ifTrue: [ copies addAll: result ]
			ifFalse: [ copies add: result ] ].
	^ copy
		setParsers: copies;
		yourself