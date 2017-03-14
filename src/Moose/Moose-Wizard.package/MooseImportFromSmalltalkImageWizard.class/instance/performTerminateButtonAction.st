wizard panes transition
performTerminateButtonAction
	"by default, just close the last current pane. Override this method if you want to create a subclass of WizardControl making a specific action"
	"^self subclassResponsibility"
	super performTerminateButtonAction .
	self validateImportation.
	