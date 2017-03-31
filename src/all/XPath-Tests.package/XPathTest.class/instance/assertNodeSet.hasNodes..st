asserting
assertNodeSet: aNodeSet hasNodes: aNodeCollection
	self
		assert: aNodeSet size = aNodeCollection size;
		assert: aNodeSet = (XPathNodeSet newFrom: aNodeCollection) sort;
		assert: (aNodeSet sortOrder isKindOf: XPathDocumentSortOrder)