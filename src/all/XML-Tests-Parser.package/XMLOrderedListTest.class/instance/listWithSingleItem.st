accessing
listWithSingleItem
	^ self listClass new
		add: self singleListItem;
		yourself