*XPath-Core-private
precedingAxis: aNodeTestStringOrBlock
	^ (self
		precedingAxisSelect: aNodeTestStringOrBlock asXPathNodeTest
		into: self nodeSetClass new)
			sortOrder: XPathReverseDocumentSortOrder new