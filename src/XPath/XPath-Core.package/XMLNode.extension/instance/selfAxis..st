*XPath-Core-enumerating - axis
selfAxis: aNodeTestStringOrBlock
	^ (self
		selfAxisSelect: aNodeTestStringOrBlock asXPathNodeTest
		into: self nodeSetClass new)
			sortOrder: XPathDocumentSortOrder new