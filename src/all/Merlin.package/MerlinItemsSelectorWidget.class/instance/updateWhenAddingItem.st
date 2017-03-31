actions
updateWhenAddingItem

	self wizardPart initialList isEmpty
		ifTrue: [ self addButtonMorph disable ].
	self wizardPart updateWhenAddingItem.
	self checkForEnablingAddRemoveButtons.
	self widgetStateChanged.