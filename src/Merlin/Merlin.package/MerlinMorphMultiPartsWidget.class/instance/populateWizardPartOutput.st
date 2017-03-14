accessing - wizard management
populateWizardPartOutput 

	"we first pay attention to populate output of each sub-part"
	self subpartsMerlinWidgets do: [:aMerlinMorphWidget |
		aMerlinMorphWidget populateWizardPartOutput.
		].
	self wizardPart selectedPageIndex: self tabGroup selectedPageIndex.
	self wizardPart outputValue: self selectedPart outputValue