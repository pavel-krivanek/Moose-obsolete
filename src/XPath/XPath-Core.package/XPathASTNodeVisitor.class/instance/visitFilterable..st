visiting - location paths
visitFilterable: aFilterable
	aFilterable hasPredicates
		ifTrue: [| oldPredicateIterator |
			oldPredicateIterator := predicateIterator.
			predicateIterator :=
				XPathASTNodeVisitorIterator on: aFilterable predicates.
			[predicateIterator atEnd]
				whileFalse: [predicateIterator visitNextWith: self].
			predicateIterator := oldPredicateIterator].
	^ aFilterable.