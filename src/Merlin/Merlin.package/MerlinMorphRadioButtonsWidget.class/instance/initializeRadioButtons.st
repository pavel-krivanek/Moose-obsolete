accessing - morph
initializeRadioButtons

	radioButtons := 
			self wizardPart options collect: [:aSymbol |
				|radioButton|
				radioButton := (self newRadionButtonFor: (self wizardPart modelOfOption: aSymbol) getSelected: #contents setSelected: #contents:  label: (self wizardPart formatBlock meValue: aSymbol)).
				radioButton 
			].
		
	^ radioButtons 
		