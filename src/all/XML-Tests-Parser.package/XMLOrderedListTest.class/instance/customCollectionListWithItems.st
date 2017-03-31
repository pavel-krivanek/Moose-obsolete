accessing
customCollectionListWithItems
	^ (self listClass collection: self customCollection)
		addAll: self listItems;
		yourself