*XPath-Core-enumerating - axis
childAxis: aNodeTestStringOrBlock
	^ (self
		childAxisSelect: aNodeTestStringOrBlock asXPathNodeTest
		into: self nodeSetClass new)
			sortOrder: XPathDocumentSortOrder new