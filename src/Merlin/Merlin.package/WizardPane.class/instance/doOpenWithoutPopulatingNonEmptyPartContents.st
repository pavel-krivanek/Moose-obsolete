window control
doOpenWithoutPopulatingNonEmptyPartContents
	"open this pane. To do that, we make sure that all the WizardParts retrieve the inputs they require and then"
	
	self distributeRequiredInputs .
	wizardParts do: [ :each | 
		each retrieveInputRequired.
		each hasBeenOpen ifFalse: [
			self populateContentsOf: each.
			each isOpen: true.
			].
		"each morphContents isNil ifTrue: [self populateContentsOf: each]"
		 ].
	self populatePartsRemaining. 
	"self  buildDialogWindow.
	self displayButtons.
	self checkForEnablingNextButton.
	wizardControl dialogWindowName: name.
	self builder openModal: self dialogWindow."
	