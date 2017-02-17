actions
validateButtonAction
	
	self textFieldMorph acceptTextInModel.
	[self wizardPart validateButtonAction] on: Error do: [
		self wizardPart textEntryMessage: 'Select items with a Smalltalk condition - INVALID EXPRESSION'.
		self wizardPart wizardPane renderer refresh.
		^ self.
		].
	self wizardPart textEntryMessage: 'Select items with a Smalltalk condition'.
	self wizardPart wizardPane renderer refresh.
	self checkForEnablingAddRemoveButtons.
	self widgetStateChanged