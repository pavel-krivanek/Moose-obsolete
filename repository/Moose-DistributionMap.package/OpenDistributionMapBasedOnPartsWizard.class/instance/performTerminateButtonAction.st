wizard panes transition
performTerminateButtonAction
	"by default, just close the last current pane. Override this method if you want to create a subclass of WizardControl making a specific action"

	super performTerminateButtonAction.
	
	(self wizardInformations at: #useDefaultColors) 
		ifTrue: [
			 self openDefaultColorsDistributionMapUsingGroupAsParts .
			]
		ifFalse: [
			 self openDistributionMapUsingGroupAsParts.
			].
	