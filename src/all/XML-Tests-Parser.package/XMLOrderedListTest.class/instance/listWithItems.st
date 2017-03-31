accessing
listWithItems
	^ self listClass new
		addAll: self listItems;
		yourself