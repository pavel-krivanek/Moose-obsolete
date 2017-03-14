actions
updateWhenRemovingItem

	"we remove the selected item from the selection list : "
	| list package tmpPackagesList selectedItems tmpSelectionList tmpList |
	selectedItems := self selectionListSelectedItems.
	tmpSelectionList := self selectionList.
	tmpSelectionList removeAll: selectedItems.
	self selectionList: tmpSelectionList.
	
	"if the selection become empty, we disable the remove button :"
	tmpSelectionList isEmpty ifTrue: [removeButton disable]. 

	"we move the removed package into the initial list :"
	tmpList := self initialList asSortedCollection: [:a :b | a<b].
	tmpList addAll: selectedItems.
	self initialList: tmpList.
