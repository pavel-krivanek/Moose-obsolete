*XPath-Core-private
ancestorAxis: aNodeTestStringOrBlock
	^ (self
		ancestorAxisSelect: aNodeTestStringOrBlock asXPathNodeTest
		into: self nodeSetClass new)
			sortOrder: XPathReverseDocumentSortOrder new