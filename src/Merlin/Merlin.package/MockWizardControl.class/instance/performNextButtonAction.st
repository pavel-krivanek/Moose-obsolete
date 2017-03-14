wizard panes transition
performNextButtonAction
	"this method is run when a next button is pressed"

	(wizardPanes at: currentPane) doClose.
	currentPane := currentPane  + 1.
	(wizardPanes at: currentPane) testOpen.