actions
checkForEnablingAddRemoveButtons

	self wizardPart initialList isEmpty ifTrue: [self addButtonMorph disable].
	self wizardPart selectionList isEmpty ifTrue: [self removeButtonMorph disable]  	