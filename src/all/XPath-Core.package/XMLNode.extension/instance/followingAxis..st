*XPath-Core-private
followingAxis: aNodeTestStringOrBlock
	^ (self
		followingAxisSelect: aNodeTestStringOrBlock asXPathNodeTest
		into: self nodeSetClass new)
			sortOrder: XPathDocumentSortOrder new