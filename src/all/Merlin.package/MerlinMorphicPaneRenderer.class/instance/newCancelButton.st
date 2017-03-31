accessing - buttons
newCancelButton
	"Each kind of pane contain a cancel button that enable to close the dialog window"

	^ self newButtonNamed: 'Cancel' withAction: #cancelButtonAction.
	