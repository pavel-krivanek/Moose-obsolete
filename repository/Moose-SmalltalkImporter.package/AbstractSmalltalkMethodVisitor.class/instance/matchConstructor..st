method-classifying
matchConstructor: aMethodNode 
	 
	famixMethod category notNil 
		ifTrue: 
			[('*instance*creation*' match: famixMethod category asLowercase) 
				ifTrue: [famixMethod kind: #constructor]]