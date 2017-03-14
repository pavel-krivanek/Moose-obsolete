*XPath-Core-enumerating - predicate axis
namespaceAxis: aNodeTestStringOrBlock predicates: aPredicateCollection
	(aPredicateCollection notEmpty
		and: [aPredicateCollection first isNumber])
		ifTrue: [
			^ (self
				namespaceAxisSelect:
					aNodeTestStringOrBlock asXPathNamespaceAxisNodeTest
				at: aPredicateCollection first asXPathNodeSetPosition
				into: self nodeSetClass new)
					sortOrder: XPathDocumentSortOrder new;
					filterWithAll: aPredicateCollection startingAt: 2]
		ifFalse: [
			^ (self namespaceAxis: aNodeTestStringOrBlock)
				filterWithAll: aPredicateCollection]