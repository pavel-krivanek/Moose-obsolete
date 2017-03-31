accessing
groupBoxName 
		
	groupBoxName 
		ifNotNil: [:aStringOrABlock | ^ aStringOrABlock meValue: self requiredInputs ].
	^ groupBoxName 