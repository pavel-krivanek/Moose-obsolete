*XPath-Core-enumerating - predicate axis
precedingSiblingAxis: aNodeTestStringOrBlock predicates: aPredicateCollection
	(aPredicateCollection notEmpty
		and: [aPredicateCollection first isNumber])
		ifTrue: [
			^ (self
				precedingSiblingAxisSelect: aNodeTestStringOrBlock asXPathNodeTest
				at: aPredicateCollection first asXPathNodeSetPosition
				into: self nodeSetClass new)
					sortOrder: XPathReverseDocumentSortOrder new;
					filterWithAll: aPredicateCollection startingAt: 2]
		ifFalse: [
			^ (self precedingSiblingAxis: aNodeTestStringOrBlock)
				filterWithAll: aPredicateCollection]