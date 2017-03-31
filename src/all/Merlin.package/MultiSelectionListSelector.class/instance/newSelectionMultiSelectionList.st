morph content setup tools
newSelectionMultiSelectionList

^( self newMultiSelectionListFor: self
		list: #selectionList
		primarySelection: #selectionListIndex
		changePrimarySelection: #changeSelectionListIndex:
		listSelection: #selectionListSelectionAt:
		changeListSelection: #selectionListSelectionAt:put:)
		minWidth: 250;
		minHeight: 350;
		yourself.