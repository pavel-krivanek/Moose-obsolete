*GT-Examples-UI
forNautilus: aBlock
	self exists ifFalse: [ ^ self ].
	
	aBlock
		value: #'Browse method-subject "' ,  self method gtDisplayString , '"'
		value: [ self method browse ]