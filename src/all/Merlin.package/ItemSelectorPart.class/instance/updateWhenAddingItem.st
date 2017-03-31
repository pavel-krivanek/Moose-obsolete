actions
updateWhenAddingItem
	| tmpItemsList item initialPackages |
	item := self listSelectedItem asString.
	tmpItemsList := OrderedCollection withAll: self selectionList.
	tmpItemsList add: item.

	" we remove the selected item from the initial list :"
	initialPackages := self initialList asOrderedCollection.
	initialPackages remove: item.
	self initialList: initialPackages.

	" we update the list of items of the selection morph list :"
	"listModel item list."
	self selectionList: tmpItemsList.
