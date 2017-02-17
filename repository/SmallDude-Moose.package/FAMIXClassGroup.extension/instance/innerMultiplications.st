*SmallDude-Moose-ui
innerMultiplications 
	 
	^self mooseModel allMultiplications 
		select: [:each | each isMultiplicationOfTwoOf: self]