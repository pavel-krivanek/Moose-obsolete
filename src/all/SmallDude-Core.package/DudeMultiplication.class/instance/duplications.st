accessing
duplications 
	<MSEProperty: #duplications type: #DudeDuplication opposite: #multiplicationInvolved> <multivalued> <derived>
	<MSEComment: 'The duplications involved in the current multiplication'>

	duplications isNil ifTrue: [duplications := FMMultivalueLink 
		on: self
		opposite: #multiplicationInvolved:]. 
	^duplications