morph content setup tools
newInitialMultiSelectionList

^ (self newMultiSelectionListFor: self
		list: #initialList
		primarySelection: #initialListIndex
		changePrimarySelection: #changeInitialListIndex:
		listSelection: #initialListSelectionAt:
		changeListSelection: #initialListSelectionAt:put:)
		minWidth: 250;
		minHeight: 350;
		yourself.