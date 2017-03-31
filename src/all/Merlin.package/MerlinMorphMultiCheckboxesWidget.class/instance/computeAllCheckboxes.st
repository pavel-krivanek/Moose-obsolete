accessing - morph contents
computeAllCheckboxes
	
	self allCheckboxes: (self wizardPart options collect: [:aLabel |
		(self newCheckboxFor: (self wizardPart modelOfOption: aLabel )
				getSelected: #contents
				setSelected: #contents:
				label: (self wizardPart formatBlock meValue: aLabel)).
		]).