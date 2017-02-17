*XPath-Core-enumerating - axis
ancestorAxis: aNodeTestStringOrBlock
	^ (self
		ancestorAxisSelect: aNodeTestStringOrBlock asXPathNodeTest
		into: self nodeSetClass new)
			sortOrder: XPathReverseDocumentSortOrder new