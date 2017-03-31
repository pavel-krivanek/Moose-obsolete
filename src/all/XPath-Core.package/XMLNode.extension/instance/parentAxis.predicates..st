*XPath-Core-private
parentAxis: aNodeTestStringOrBlock predicates: aPredicateCollection
	(aPredicateCollection notEmpty
		and: [aPredicateCollection first isNumber])
		ifTrue: [
			^ (self
				parentAxisSelect: aNodeTestStringOrBlock asXPathNodeTest
				at: aPredicateCollection first asXPathNodeSetPosition
				into: self nodeSetClass new)
					"the spec says this is a forawrd axis"
					sortOrder: XPathLevelDocumentSortOrder new;
					filterEachInSeparateContextWithAll: aPredicateCollection
						startingAt: 2]
		ifFalse: [
			^ (self parentAxis: aNodeTestStringOrBlock)
				filterEachInSeparateContextWithAll: aPredicateCollection]