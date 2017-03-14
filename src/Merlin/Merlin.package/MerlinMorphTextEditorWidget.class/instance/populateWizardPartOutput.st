accessing - wizard management
populateWizardPartOutput 

	self wizardPart outputValue: ((ObjectStringConverter forClass: String) stringAsObject: textEditor textMorph asText asString  )..
	