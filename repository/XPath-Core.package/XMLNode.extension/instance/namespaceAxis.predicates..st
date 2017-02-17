*XPath-Core-enumerating - predicate axis
namespaceAxis: aNodeTestStringOrBlock predicates: aPredicateCollection
	^ (self namespaceAxis: aNodeTestStringOrBlock)
		filterWithAll: aPredicateCollection