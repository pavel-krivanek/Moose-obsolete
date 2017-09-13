initialization
setRadioGroup
	RadioButtonGroup new
		addRadioButton: noDefaultRadio;
		addRadioButton: numberRadio;
		addRadioButton: booleanRadio;
		addRadioButton: stringRadio;
		addRadioButton: collectionRadio;
		addRadioButton: codeRadio