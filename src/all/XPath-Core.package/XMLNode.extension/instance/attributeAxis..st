*XPath-Core-private
attributeAxis: aNodeTestStringOrBlock
	^ (self
		attributeAxisSelect: aNodeTestStringOrBlock asXPathAttributeAxisNodeTest
		into: self nodeSetClass new)
			sortOrder: XPathLevelDocumentSortOrder new