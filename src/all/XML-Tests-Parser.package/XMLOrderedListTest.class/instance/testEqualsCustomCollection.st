tests
testEqualsCustomCollection
	self
		assertList: self emptyList
		equals: self customCollectionEmptyList.
	self
		assertList: self listWithSingleItem
		equals: self customCollectionListWithSingleItem.
	self
		assertList: self listWithItems
		equals: self customCollectionListWithItems.
	self
		denyList: self emptyList
		equals: self customCollectionListWithSingleItem.
	self
		denyList: self emptyList
		equals: self customCollectionListWithItems.
	self
		denyList: self listWithSingleItem
		equals: self customCollectionEmptyList.
	self
		denyList: self listWithSingleItem
		equals: self customCollectionListWithItems.
	self
		denyList: self listWithItems
		equals: self customCollectionEmptyList.
	self
		denyList: self listWithItems
		equals: self customCollectionListWithSingleItem.