enumerating
?? aPredicateOrPredicateCollection
	"?? filters an entire resulting node set like a filter expression, so
	all predicate positions are relative to the document order of the nodes"

	^ aPredicateOrPredicateCollection isCollection
		ifTrue: [
			self asXPathFilterExpressionPredicateRoot
				filterWithAll: aPredicateOrPredicateCollection]
		ifFalse: [
			self asXPathFilterExpressionPredicateRoot
				filterWith: aPredicateOrPredicateCollection]