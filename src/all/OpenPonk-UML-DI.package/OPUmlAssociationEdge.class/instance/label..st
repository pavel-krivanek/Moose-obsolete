accessing
label: aLabel
	label := aLabel.
	aLabel owningElement: self.
	constraints add: [ self constraintLabel: label at: #middle ]