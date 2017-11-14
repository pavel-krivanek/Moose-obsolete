visiting - location paths
visitFilterable: aFilterable
	aFilterable hasPredicates
		ifTrue: [| oldPredicateIterator  predicates |
			oldPredicateIterator := predicateIterator.
			predicateIterator :=
				XPathASTNodeVisitorIterator on: aFilterable predicates.
			predicates := OrderedCollection new: aFilterable totalPredicates.
			[predicateIterator atEnd]
				whileFalse: [| predicate |
					(predicate := predicateIterator visitNextWith: self) isNull
						ifFalse: [predicates addLast: predicate]].
			aFilterable predicates: predicates.
			predicateIterator := oldPredicateIterator].
	^ aFilterable.