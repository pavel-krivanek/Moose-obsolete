*XPath-Core-private
selfAxis: aNodeTestStringOrBlock
	^ (self
		selfAxisSelect: aNodeTestStringOrBlock asXPathNodeTest
		into: self nodeSetClass new)
			sortOrder: XPathLevelDocumentSortOrder new