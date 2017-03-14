grammar-atoms
predicateAtom
	^ $: asParser , $^ asParser optional , #word asParser plus flatten , $: asParser map: [ :begin :negated :selector :end |
		| result |
		result := PPPredicateObjectParser 
			on: (PPCharSetPredicate on: [ :char | char perform: selector asSymbol ]) 
			message: selector printString , ' expected'.
		negated isNil
			ifFalse: [ result := result negated ].
		result ]