morph content setup tools
newValidateButton

	"return a button opening the context frame when clicked"
	^ self newButtonNamed: 'Validate' withAction: #validateButtonAction
