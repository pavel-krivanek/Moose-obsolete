actions
updateWhenRemovingItem

	"we remove the selected item from the selection list : "
	| list package tmpPackagesList selectedItems tmpSelectionList tmpList |
	selectedItems := self selectionListSelectedItems.
	tmpSelectionList := self selectionList.
	tmpSelectionList removeAll: selectedItems.
	self selectionList: tmpSelectionList.

	"we move the removed package into the initial list :"
	tmpList := self initialList asSortedCollection: [:a :b | a<b].
	tmpList addAll: selectedItems.
	self initialList: tmpList.
