visiting - predicates
visitPredicate: aPredicate
	"traverse in post-order"
	super visitPredicate: aPredicate.

	"a predicate that is just [true()] can be ignored if it's not first"
	(self previousPredicate isNull not
		and: [aPredicate expression isFunctionCall
			and: [aPredicate expression isTrueFunctionCall]])
		ifTrue: [^ XPathASTNullNode new]
		ifFalse: [^ aPredicate].