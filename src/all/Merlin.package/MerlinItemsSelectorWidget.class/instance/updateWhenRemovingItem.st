actions
updateWhenRemovingItem
	
	self wizardPart selectionList isEmpty ifTrue: [self removeButtonMorph disable].
	self wizardPart updateWhenRemovingItem.
	self checkForEnablingAddRemoveButtons. 
	self widgetStateChanged.
	 
