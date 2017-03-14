properties
allEarliestEvolutionOfPropertyNamed: aPropertyName
	
	| ene currentValue previousValue |
	ene := self first propertyNamed: aPropertyName.
	self
		versionsIndexFrom2Do:
			[:i | 
			currentValue := (self versions at: i) propertyNamed: aPropertyName.
			previousValue := (self versions at: i - 1) propertyNamed: aPropertyName.
			[ene := ene + ((currentValue - previousValue) abs * (2 raisedTo: 1 - i))]
				on: ArithmeticError
				do: [:exc | ene := ene + 0]].
	^ene asFloat