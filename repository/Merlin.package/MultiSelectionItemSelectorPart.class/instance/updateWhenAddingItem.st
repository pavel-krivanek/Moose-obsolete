actions
updateWhenAddingItem
	|  selectedItemsInInitialList tmpList initialListOfItems |
	selectedItemsInInitialList := self initialListSelectedItems .
	tmpList := SortedCollection withAll: self selectionList.
	tmpList addAll: selectedItemsInInitialList.

	" we remove the selected package from the initial list :"
	initialListOfItems := self initialList asOrderedCollection.
	initialListOfItems removeAll: selectedItemsInInitialList.
	self initialList: initialListOfItems.

	" we update the list of packages of the selection morph list :"
	self selectionList: tmpList.