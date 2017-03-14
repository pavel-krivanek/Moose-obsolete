*XPath-Core-enumerating - axis
namespaceAxis: aNodeTestStringOrBlock
	^ (self
		namespaceAxisSelect: aNodeTestStringOrBlock asXPathNamespaceAxisNodeTest
		into: self nodeSetClass new)
			sortOrder: XPathDocumentSortOrder new