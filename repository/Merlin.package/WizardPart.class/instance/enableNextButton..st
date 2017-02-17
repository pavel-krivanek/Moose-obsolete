protected
enableNextButton: trueOrFalse
	"Set the value of enableNextButton and update the next button in the wizard pane (if the wizard pane is yet initialized)"
	
	enableNextButton := trueOrFalse.
	self wizardPane ifNotNil: [self wizardPane checkForEnablingNextButton ]
		

