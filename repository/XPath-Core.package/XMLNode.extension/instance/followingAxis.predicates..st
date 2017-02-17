*XPath-Core-enumerating - predicate axis
followingAxis: aNodeTestStringOrBlock predicates: aPredicateCollection
	(aPredicateCollection notEmpty
		and: [aPredicateCollection first isNumber])
		ifTrue: [
			^ (self
				followingAxisSelect: aNodeTestStringOrBlock asXPathNodeTest
				at: aPredicateCollection first asXPathNodeSetPosition
				into: self nodeSetClass new)
					sortOrder: XPathDocumentSortOrder new;
					filterWithAll: aPredicateCollection startingAt: 2]
		ifFalse: [
			^ (self followingAxis: aNodeTestStringOrBlock)
				filterWithAll: aPredicateCollection]