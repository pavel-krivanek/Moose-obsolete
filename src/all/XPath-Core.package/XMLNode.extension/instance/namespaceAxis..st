*XPath-Core-private
namespaceAxis: aNodeTestStringOrBlock
	^ (self
		namespaceAxisSelect: aNodeTestStringOrBlock asXPathNamespaceAxisNodeTest
		into: self nodeSetClass new)
			sortOrder: XPathLevelDocumentSortOrder new