*XPath-Core-enumerating - axis
parentAxis: aNodeTestStringOrBlock
	^ (self
		parentAxisSelect: aNodeTestStringOrBlock asXPathNodeTest
		into: self nodeSetClass new)
			"the spec says this is a forawrd axis"
			sortOrder: XPathDocumentSortOrder new