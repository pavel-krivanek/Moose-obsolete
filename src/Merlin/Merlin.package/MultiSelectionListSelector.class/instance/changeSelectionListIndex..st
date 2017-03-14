selection list control
changeSelectionListIndex: newListIndex 
	selectionListIndex ~= 0 
		ifTrue: [selectionListSelections at: selectionListIndex put: false].
	newListIndex ~= 0 
		ifTrue: [selectionListSelections at: newListIndex put: true].
	selectionListIndex := newListIndex.
	self changed: #selectionListIndex.
	self contentsChanged.
	
	"if  we disable or enable the addButton according the selection list has selected items or not. "
	self nothingSelectedInSelectionList 
		ifTrue: [removeButton disable]
		ifFalse: [removeButton enable].	
			
	"when clicking on the selectionList, we deselect all in the initial list"
	self deselectAllInInitialList 
		
	