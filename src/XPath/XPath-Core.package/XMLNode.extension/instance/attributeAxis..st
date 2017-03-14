*XPath-Core-enumerating - axis
attributeAxis: aNodeTestStringOrBlock
	^ (self
		attributeAxisSelect: aNodeTestStringOrBlock asXPathAttributeAxisNodeTest
		into: self nodeSetClass new)
			sortOrder: XPathDocumentSortOrder new