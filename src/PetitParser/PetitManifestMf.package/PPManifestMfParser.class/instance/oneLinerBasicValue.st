as yet unclassified
oneLinerBasicValue
	^ (PPPredicateObjectParser anyExceptAnyOf: {$, . Character cr . Character lf })
		star flatten