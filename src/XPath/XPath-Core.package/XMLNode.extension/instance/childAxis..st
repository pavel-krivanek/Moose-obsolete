*XPath-Core-private
childAxis: aNodeTestStringOrBlock
	^ (self
		childAxisSelect: aNodeTestStringOrBlock asXPathNodeTest
		into: self nodeSetClass new)
			sortOrder: XPathLevelDocumentSortOrder new