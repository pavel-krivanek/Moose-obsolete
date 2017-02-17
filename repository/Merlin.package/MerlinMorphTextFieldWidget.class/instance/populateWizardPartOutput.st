accessing - wizard management
populateWizardPartOutput 

	self wizardPart textEntryContents: ((ObjectStringConverter forClass: String) stringAsObject: textField textMorph asText asString)  
	