initialize-release
initialize
	
	super initialize.
	requiredInputs := Dictionary new.
	"by default, a wizard part doesn't require anything to enable the next button of the wizard pane"
	self enableNextButton.
	self isOpen: false.
	self hasBeenOpen: false.
	callbackBlock := [:outputValue | ].
	useLatePopulateContents := true.
	numberOfPopulateContents := 0.