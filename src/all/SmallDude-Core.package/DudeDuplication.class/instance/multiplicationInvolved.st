accessing
multiplicationInvolved

	<MSEProperty: #multiplicationInvolved type: #DudeMultiplication opposite: #duplications>
	<MSEComment: 'The multiplications in which the current duplication is involved'>
	
	^ self privateState attributeAt: #multiplicationInvolved ifAbsent: [nil].