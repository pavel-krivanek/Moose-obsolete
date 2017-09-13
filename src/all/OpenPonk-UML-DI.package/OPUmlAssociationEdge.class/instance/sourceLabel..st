accessing
sourceLabel: aLabel
	sourceLabel := aLabel.
	aLabel owningElement: self.
	constraints add: [ self constraintLabel: aLabel at: #source side: 1 ]