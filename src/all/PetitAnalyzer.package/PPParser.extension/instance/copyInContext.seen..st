*petitanalyzer-matching
copyInContext: aDictionary seen: aSeenDictionary
	| copy |
	aSeenDictionary 
		at: self 
		ifPresent: [ :value | ^ value ].
	copy := aSeenDictionary
		at: self
		put: self copy.
	copy children do: [ :each |
		copy
			replace: each
			with: (each copyInContext: aDictionary seen: aSeenDictionary) ].
	^ copy