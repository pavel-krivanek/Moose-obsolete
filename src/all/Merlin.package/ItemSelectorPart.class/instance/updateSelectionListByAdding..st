control - text entry
updateSelectionListByAdding: anItem 

	| tmpSelectionList |
	tmpSelectionList := self selectionList asOrderedCollection.
	tmpSelectionList add: anItem.
	self selectionList: (tmpSelectionList asSortedCollection: [:a :b | a < b]). 