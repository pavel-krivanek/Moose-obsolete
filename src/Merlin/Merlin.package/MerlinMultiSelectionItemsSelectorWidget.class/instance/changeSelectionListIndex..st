control - selection list
changeSelectionListIndex: newListIndex 

	self wizardPart deselectAllInInitialList. 
	self wizardPart changeSelectionListIndex: newListIndex.
	self checkForEnablingAddRemoveButtons.
	"self widgetStateChanged."