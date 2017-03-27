*XPath-Core-private
ancestorOrSelfAxis: aNodeTestStringOrBlock
	^ (self
		ancestorOrSelfAxisSelect: aNodeTestStringOrBlock asXPathNodeTest
		into: self nodeSetClass new)
			sortOrder: XPathReverseDocumentSortOrder new