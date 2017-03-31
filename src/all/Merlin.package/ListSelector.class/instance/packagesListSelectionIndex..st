initial list control
packagesListSelectionIndex: anIndex 

	initialListSelectionIndex := anIndex.	
		
	initialListSelectionIndex > 0 
	"when a package is selected in the packagesList, .."
		ifTrue: [ 

	"we make sure that the addButton can be clicked on : "
			addButton enable.
	"we disable the selection of the selection list : "
			self selectionListSelectionIndex: 0.
			self changed: #selectionListSelectionIndex]
 
		ifFalse: [ 
			addButton disable 
			].
	
	self changed: #packagesListSelectionIndex.