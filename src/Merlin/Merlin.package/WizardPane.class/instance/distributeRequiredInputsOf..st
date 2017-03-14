actions
distributeRequiredInputsOf: aWizardPart
	
	
	(partsAndRequiredInformations at: aWizardPart ifAbsent: [ ^self ]) do: [:symbol |
			"in a first time, we make sure that the part associated to the required input transmit its outputValue. Like that, we are sure that the information is present at the moment we want to acceed it. "
		self retrieveOutput: symbol.
			"then we can distribute this value. An error can occure if you have not set your  parts to the pane in  a right order"
		aWizardPart requiredInputsAt: symbol put: (wizardControl wizardInformations at: symbol)
		].
	aWizardPart retrieveInputRequired .
	