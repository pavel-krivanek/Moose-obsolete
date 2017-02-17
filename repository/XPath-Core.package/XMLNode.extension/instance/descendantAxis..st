*XPath-Core-enumerating - axis
descendantAxis: aNodeTestStringOrBlock
	^ (self
		descendantAxisSelect: aNodeTestStringOrBlock asXPathNodeTest
		into: self nodeSetClass new)
			sortOrder: XPathDocumentSortOrder new