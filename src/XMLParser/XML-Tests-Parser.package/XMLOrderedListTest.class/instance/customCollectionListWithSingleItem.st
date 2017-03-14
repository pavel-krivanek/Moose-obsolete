accessing
customCollectionListWithSingleItem
	^ (self listClass collection: self customCollection)
		add: self singleListItem;
		yourself