tests
testEquals
	self
		assertList: self emptyList equals: self emptyList;
		assertList: self listWithSingleItem equals: self listWithSingleItem;
		assertList: self listWithItems equals: self listWithItems;
		denyList: self emptyList equals: self listWithSingleItem;
		denyList: self emptyList equals: self listWithItems;
		denyList: self listWithSingleItem equals: self listWithItems