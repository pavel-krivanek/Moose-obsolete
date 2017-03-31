wizard panes transition
performTerminateButtonAction
	"by default, just close the last current pane. Override this method if you want to create a subclass of WizardControl making a specific action"

	|tmpDistributionMap|
	super performTerminateButtonAction.
	tmpDistributionMap := DistributionMap 
		onElements: self mooseGroup 
		containers: self containersBlock 
		properties: self propertyBlockOrSelector.

	(self wizardInformations at: #useDefaultColors) 
		ifFalse: [
			tmpDistributionMap 
				propertyColorMap: self propertyColorMap;
				propertyValuesMap: self propertyValuesMap.
			].
	tmpDistributionMap open