spec
nb_json
	^ PPPredicateObjectParser on: (PPCharSetPredicate on: 
			[ :e | e asInteger >= 32 or: [ e = Character tab ] ]) message: 'nb_json expected' 