*GT-Examples-UI
forNautilus: aBlock
	self exists ifFalse: [ ^ self ].
	
	aBlock
		value: #'Browse dependency-method "' ,  self method gtDisplayString, '"'
		value: [ self method browse ]