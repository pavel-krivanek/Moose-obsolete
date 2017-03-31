initial list control
changeInitialListIndex: newListIndex 
	initialListIndex ~= 0 
		ifTrue: [initialListSelections at: initialListIndex put: false].
	newListIndex ~= 0 
		ifTrue: [
			initialListSelections at: newListIndex put: true.
			
			].
		
	initialListIndex := newListIndex.
	
	
	
	"if  we disable or enable the addButton according the initial has selected items or not. "
	(self nothingSelectedInInitialList )
		ifTrue: [addButton disable]
		ifFalse: [addButton enable].			
				
	"when clicking on the initialList, we deselect all in the selection list"
	self deselectAllInSelectionList .
	
	self changed: #initialListIndex.
	self contentsChanged.	
	