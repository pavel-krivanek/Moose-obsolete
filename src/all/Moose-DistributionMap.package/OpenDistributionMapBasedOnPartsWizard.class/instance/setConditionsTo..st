initialize-release
setConditionsTo: aWizardPane
	aWizardPane
		condition: [ :wizardInfos | 
			| isOk |
			isOk := true.
			[ 
			(self elementsBlockOrSelector rtValue: self mooseGroup anyOne) ifNil: [ isOk := false ] .
			 ] on: Exception do: [ isOk := false ].
			isOk ]
		named: 'Invalid elements selector (the choosen selector might return nil for some elements)'.
	aWizardPane
		condition: [ :wizardInfos | 
			| isOk |
			isOk := true.
			[ 
			(self propertyBlockOrSelector rtValue: self distributionMapElements anyOne) ifNil: [ isOk := false ].
			 ] on: Exception do: [ :ex |
			isOk := false ].
			isOk ]
		named: 'Not able to compute properties (the choosen selector might return nil for some elements)'