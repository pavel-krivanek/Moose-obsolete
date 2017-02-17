control - selection list
changeSelectionListIndex: newListIndex 
	selectionListIndex ~= 0 
		ifTrue: [selectionListSelections at: selectionListIndex put: false].
	newListIndex ~= 0 
		ifTrue: [selectionListSelections at: newListIndex put: true].
	selectionListIndex := newListIndex.
	
	self contentsChanged.
		
	