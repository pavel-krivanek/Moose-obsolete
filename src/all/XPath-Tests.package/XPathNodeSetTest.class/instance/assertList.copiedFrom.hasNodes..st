assertions
assertList: aList copiedFrom: aSecondList hasNodes: aNodeCollection
	self
		assertList: aList
		copiedFrom: aSecondList
		equals: (self listClass newFrom: aNodeCollection) sort.
	self assert: (aList sortOrder isKindOf: XPathDocumentSortOrder).