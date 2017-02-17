primitives
charEscape
	^ $\ asParser , (PPPredicateObjectParser anyOf: (String withAll: CharacterTable keys))