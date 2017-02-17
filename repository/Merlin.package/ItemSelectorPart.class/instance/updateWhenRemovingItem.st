actions
updateWhenRemovingItem
	"we remove the selected item from the selection list : "
	| list item tmpInitialList |
	item := self selectionListSelectedItem.
	list := self selectionList asOrderedCollection.
	list remove: item.
	self selectionList: list.

	"we move the removed item into the items list :"
	tmpInitialList := self initialList asOrderedCollection.
	tmpInitialList add: item.
	self initialList: tmpInitialList.
