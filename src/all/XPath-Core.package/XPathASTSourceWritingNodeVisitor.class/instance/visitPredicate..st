visiting - predicates
visitPredicate: aPredicate
	self emit: $[.
	super visitPredicate: aPredicate.
	self emit: $].
	^ aPredicate.