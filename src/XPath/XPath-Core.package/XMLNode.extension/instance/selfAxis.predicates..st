*XPath-Core-enumerating - predicate axis
selfAxis: aNodeTestStringOrBlock predicates: aPredicateCollection
	(aPredicateCollection notEmpty
		and: [aPredicateCollection first isNumber])
		ifTrue: [
			^ (self
				selfAxisSelect: aNodeTestStringOrBlock asXPathNodeTest
				at: aPredicateCollection first asXPathNodeSetPosition
				into: self nodeSetClass new)
					sortOrder: XPathDocumentSortOrder new;
					filterEachInSeparateContextWithAll: aPredicateCollection
						startingAt: 2]
		ifFalse: [
			^ (self selfAxis: aNodeTestStringOrBlock)
				filterEachInSeparateContextWithAll: aPredicateCollection]