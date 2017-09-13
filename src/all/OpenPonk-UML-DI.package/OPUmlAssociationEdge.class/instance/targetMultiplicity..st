accessing
targetMultiplicity: aLabel
	targetMultiplicity := aLabel.
	aLabel owningElement: self.
	constraints add: [ self constraintLabel: aLabel at: #target side: -1 ]