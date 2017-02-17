grammar-characters
characterSetCharacter
	^ (PPPredicateObjectParser anyOf: '-]') negate map: [ :char | char asParser ]