highlighting - predicate levels
incrementPredicateColorLevel
	(predicateColorLevel := predicateColorLevel + 1) <= self maxPredicateColorLevel
		ifFalse: [
			"wrap around to the first color"
			predicateColorLevel := 1]