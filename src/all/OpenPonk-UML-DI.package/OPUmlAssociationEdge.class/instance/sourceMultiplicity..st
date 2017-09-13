accessing
sourceMultiplicity: aLabel
	sourceMultiplicity := aLabel.
	aLabel owningElement: self.
	constraints add: [ self constraintLabel: aLabel at: #source side: -1 ]