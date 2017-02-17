wizard panes transition
performPreviousButtonAction
	"this method is run when a previous button is pressed"
	
	(wizardPanes at: currentPane) doClose.
	currentPane := currentPane  - 1.
	(wizardPanes at: currentPane ) doOpen. 