*GT-Examples-UI
forNautilus: aBlock
	self exists ifFalse: [ ^ self ].
	
	aBlock 
		value: #'Browse selector-subject "' ,  self selector , '"'
		value: [ 
			| env |
			self addToSelectorEnvironment: (env := RBSelectorEnvironment new).
			env browse ]