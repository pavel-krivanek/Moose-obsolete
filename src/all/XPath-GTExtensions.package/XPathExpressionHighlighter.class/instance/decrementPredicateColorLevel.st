highlighting - predicate levels
decrementPredicateColorLevel
	(predicateColorLevel := predicateColorLevel - 1) >= 1
		ifFalse: [
			"wrap around to the last color"
			predicateColorLevel := self maxPredicateColorLevel]