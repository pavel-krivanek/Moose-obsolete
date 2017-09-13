accessing
targetLabel: aLabel
	targetLabel := aLabel.
	aLabel owningElement: self.
	constraints add: [ self constraintLabel: aLabel at: #target side: 1 ]