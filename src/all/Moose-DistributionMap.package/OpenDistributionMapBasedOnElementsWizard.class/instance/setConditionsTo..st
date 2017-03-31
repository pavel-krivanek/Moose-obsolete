initialize-release
setConditionsTo: aWizardPane

	aWizardPane
		condition: [ :wizardInfos | 
			| isOk |
			isOk := true.
			[ 
			 (self containersBlock rtValue: self mooseGroup anyOne) ifNil: [ isOk := false ] .
			 ] on: Exception do: [ isOk := false ].
			isOk ]
		named: 'Invalid containers selector (the choosen selector might return nil for some elements)'.
	aWizardPane
		condition: [ :wizardInfos | 
			| isOk |
			isOk := true.
			[ 
			(self propertyBlockOrSelector rtValue: self distributionMapElements anyOne) ifNil: [ isOk := false ]
			 ] on: Exception do: [ isOk := false ].
			isOk ]
		named: 'Not able to compute properties. (the choosen selector might return nil for some elements)'