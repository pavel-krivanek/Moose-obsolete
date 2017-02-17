*XPath-Core-enumerating - axis
followingSiblingAxis: aNodeTestStringOrBlock
	^ (self
		followingSiblingAxisSelect: aNodeTestStringOrBlock asXPathNodeTest
		into: self nodeSetClass new)
			sortOrder: XPathDocumentSortOrder new