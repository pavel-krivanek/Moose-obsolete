matching
match: aParser inContext: aDictionary seen: anIdentitySet
	(verificationBlock value: aParser value: aDictionary)
		ifFalse: [ ^ false ].
	^ (aDictionary at: self ifAbsentPut: [ aParser ])
		match: aParser inContext: aDictionary seen: anIdentitySet