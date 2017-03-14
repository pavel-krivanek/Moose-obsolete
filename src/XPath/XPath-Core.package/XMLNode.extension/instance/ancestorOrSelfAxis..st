*XPath-Core-enumerating - axis
ancestorOrSelfAxis: aNodeTestStringOrBlock
	^ (self
		ancestorOrSelfAxisSelect: aNodeTestStringOrBlock asXPathNodeTest
		into: self nodeSetClass new)
			sortOrder: XPathReverseDocumentSortOrder new