*XPath-Core-enumerating - axis
precedingAxis: aNodeTestStringOrBlock
	^ (self
		precedingAxisSelect: aNodeTestStringOrBlock asXPathNodeTest
		into: self nodeSetClass new)
			sortOrder: XPathReverseDocumentSortOrder new