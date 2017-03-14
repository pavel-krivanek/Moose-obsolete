enumerating
?? aPredicateOrPredicateCollection
	"?? filters an entire resulting node set like a filter expression, so
	all predicate positions are relative to document order"
	^ aPredicateOrPredicateCollection isCollection
		ifTrue: [
			self asXPathFilterExpressionPredicateRoot
				filterWithAll: aPredicateOrPredicateCollection]
		ifFalse: [
			self asXPathFilterExpressionPredicateRoot
				filterWith: aPredicateOrPredicateCollection]