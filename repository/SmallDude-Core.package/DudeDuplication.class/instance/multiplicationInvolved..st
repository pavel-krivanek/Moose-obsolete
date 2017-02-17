accessing
multiplicationInvolved: aMultiplication

	self privateState attributeAt: #multiplicationInvolved put: (FMMultivalueLink 
		on: self
		update: #duplications
		from: self multiplicationInvolved
		to: aMultiplication).