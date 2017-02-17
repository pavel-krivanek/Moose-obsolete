*petitislands
nextSets
	| nextSets |
	
	nextSets := IdentityDictionary new.
	self allParsersDo: [ :each | nextSets at: each put: IdentitySet new ].
	
	(nextSets at: self) add: PPSentinel instance.
	
	[ 	| changed |
		changed := false.
	
		nextSets keysAndValuesDo: [:parser :next |
			changed := (parser 
				nextSets: nextSets
				into: next) or: [ changed ].
		].
		changed ] whileTrue.
	
	^ nextSets