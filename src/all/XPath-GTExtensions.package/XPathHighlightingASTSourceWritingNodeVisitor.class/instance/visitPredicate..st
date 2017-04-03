visiting - predicates
visitPredicate: aPredicate
	highlighter
		startPredicateHighlightPosition: self startPosition;
		endPredicateHighlightPosition: self startPosition;
		incrementPredicateColorLevel.
	super visitPredicate: aPredicate.
	highlighter
		decrementPredicateColorLevel;
		startPredicateHighlightPosition: self endPosition;
		endPredicateHighlightPosition: self endPosition.
	^ aPredicate.