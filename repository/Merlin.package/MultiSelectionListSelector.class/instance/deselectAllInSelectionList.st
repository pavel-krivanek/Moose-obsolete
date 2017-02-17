actions
deselectAllInSelectionList
	selectionListIndex := 0.
	self selectionList: self selectionList.
	removeButton  disable.
	