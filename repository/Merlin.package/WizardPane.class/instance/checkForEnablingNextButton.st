actions
checkForEnablingNextButton
	"this method is called each time a wizard part change is state about enabling or not the next button. Just look if all wizard parts are 'ok'"
	
	wizardParts detect: [:each | each enableNextButtonValue = false ] ifNone: [^ self enableNextButton ].
	self disableNextButton.