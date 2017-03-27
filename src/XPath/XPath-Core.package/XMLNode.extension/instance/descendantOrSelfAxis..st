*XPath-Core-private
descendantOrSelfAxis: aNodeTestStringOrBlock
	^ (self
		descendantOrSelfAxisSelect: aNodeTestStringOrBlock asXPathNodeTest
		into: self nodeSetClass new)
			sortOrder: XPathDocumentSortOrder new