*XPath-Core-private
precedingSiblingAxis: aNodeTestStringOrBlock
	^ (self
		precedingSiblingAxisSelect: aNodeTestStringOrBlock asXPathNodeTest
		into: self nodeSetClass new)
			sortOrder: XPathLevelReverseDocumentSortOrder new