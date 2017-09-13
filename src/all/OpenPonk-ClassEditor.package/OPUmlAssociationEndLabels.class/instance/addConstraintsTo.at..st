adding
addConstraintsTo: aCollection at: aPosition
	aCollection
		add: (self constraintLabel: nameLabel at: aPosition side: 1);
		add: (self constraintLabel: multiplicityLabel at: aPosition side: -1)