accessing - morph contents
checkboxMorph

	^ checkboxMorph ifNil: [
		checkboxMorph := (self newCheckboxFor: (self wizardPart)
				getSelected: #contents
				setSelected: #contents:
				label: (self wizardPart label)).
		]