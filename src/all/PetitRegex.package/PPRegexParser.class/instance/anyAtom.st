grammar-atoms
anyAtom
	^ $. asParser map: [ :char | (PPPredicateObjectParser char: (Character value: 0)) negate ]