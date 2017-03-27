*XPath-Core-private
followingSiblingAxis: aNodeTestStringOrBlock
	^ (self
		followingSiblingAxisSelect: aNodeTestStringOrBlock asXPathNodeTest
		into: self nodeSetClass new)
			sortOrder: XPathLevelDocumentSortOrder new