*XPath-Core-enumerating - axis
precedingSiblingAxis: aNodeTestStringOrBlock
	^ (self
		precedingSiblingAxisSelect: aNodeTestStringOrBlock asXPathNodeTest
		into: self nodeSetClass new)
			sortOrder: XPathReverseDocumentSortOrder new