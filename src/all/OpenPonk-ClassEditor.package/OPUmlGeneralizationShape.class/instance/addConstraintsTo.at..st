configuration
addConstraintsTo: aCollection at: aPosition
	aCollection add: (self constraintLabel: nameLabel at: aPosition side: -1)