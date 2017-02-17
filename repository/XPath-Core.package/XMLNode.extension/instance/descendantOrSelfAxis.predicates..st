*XPath-Core-enumerating - predicate axis
descendantOrSelfAxis: aNodeTestStringOrBlock predicates: aPredicateCollection
	(aPredicateCollection notEmpty
		and: [aPredicateCollection first isNumber])
		ifTrue: [
			^ (self
				descendantOrSelfAxisSelect: aNodeTestStringOrBlock asXPathNodeTest
				at: aPredicateCollection first asXPathNodeSetPosition
				into: self nodeSetClass new)
					sortOrder: XPathDocumentSortOrder new;
					filterWithAll: aPredicateCollection startingAt: 2]
		ifFalse: [
			^ (self descendantOrSelfAxis: aNodeTestStringOrBlock)
				filterWithAll: aPredicateCollection]