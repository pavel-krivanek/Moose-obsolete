selection list control
selectionListSelectionIndex: anIndex

	selectionListSelectionIndex := anIndex.
	self changed: #selectionListSelectionIndex.
	
	
	self selectionListSelectionIndex > 0
		ifTrue: [
		"we make sure that the removeButton is enabled when a package is selected :"
			removeButton enable.
		"we disable the selection of the packages list : "
			self packagesListSelectionIndex: 0.
			self changed: #packagesListSelectionIndex
			]
		ifFalse: [
			removeButton disable
			
			].
		
