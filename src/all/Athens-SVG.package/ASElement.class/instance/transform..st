operations
transform: aString
	" rotate(10) scale (1) translate (100,10) "

	self attributeAt: #transform put: (ASTransformConverter new translateString: aString)