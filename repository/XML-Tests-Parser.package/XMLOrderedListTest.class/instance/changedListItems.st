accessing
changedListItems
	^ self listItems collect: [:each | self changedListItem: each]