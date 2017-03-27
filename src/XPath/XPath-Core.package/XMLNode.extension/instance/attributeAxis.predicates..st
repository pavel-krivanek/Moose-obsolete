*XPath-Core-private
attributeAxis: aNodeTestStringOrBlock predicates: aPredicateCollection
	(aPredicateCollection notEmpty
		and: [aPredicateCollection first isNumber])
		ifTrue: [
			^ (self
				attributeAxisSelect:
					aNodeTestStringOrBlock asXPathAttributeAxisNodeTest
				at: aPredicateCollection first asXPathNodeSetPosition
				into: self nodeSetClass new)
					sortOrder: XPathLevelDocumentSortOrder new;
					filterWithAll: aPredicateCollection startingAt: 2]
		ifFalse: [
			^ (self attributeAxis: aNodeTestStringOrBlock)
				filterWithAll: aPredicateCollection]