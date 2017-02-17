text entry control
updateSelectionListByAdding: aPackageName 

	| tmpSelectionList |
	tmpSelectionList := self selectionList.
	tmpSelectionList add: aPackageName.
	self selectionList: (tmpSelectionList asSortedCollection: [:a :b | a < b]). 