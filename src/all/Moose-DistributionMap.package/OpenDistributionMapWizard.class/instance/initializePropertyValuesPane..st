initialize-release
initializePropertyValuesPane: aWizardPane
	| dropListPart |
	dropListPart := (DropListPart new)
		list: #(1 2 3 4 5 6 7 8 9 10);
		inGroupboxNamed: 'How many values do you want to display from your property: ';
		defaultValue: 2;
		useLatePopulateContents: false;
		callback: [ :outputValue | 
			aWizardPane removeAllParts.
			aWizardPane row: dropListPart associatedTo: #numberOfProperties.
			self initializePropertyValuesPane: aWizardPane numberOfProp: outputValue].
	aWizardPane row: dropListPart associatedTo: #numberOfProperties