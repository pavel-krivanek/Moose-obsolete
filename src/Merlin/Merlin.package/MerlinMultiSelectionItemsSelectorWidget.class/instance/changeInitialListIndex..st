control - initial list 
changeInitialListIndex: newListIndex 

	self wizardPart deselectAllInSelectionList.
	self wizardPart changeInitialListIndex: newListIndex .
	self checkForEnablingAddRemoveButtons.
	"self widgetStateChanged."