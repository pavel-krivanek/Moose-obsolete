asserting
assertNodeSet: aNodeSet hasSortOrder: aSortOrder
	self assert: (aNodeSet sortOrder class == aSortOrder)