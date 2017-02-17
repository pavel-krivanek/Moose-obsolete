grammar-atoms
characterAtom
	^ (PPPredicateObjectParser anyOf: '()[|:{*+?\.^$') negate map: [ :char | char asParser ]