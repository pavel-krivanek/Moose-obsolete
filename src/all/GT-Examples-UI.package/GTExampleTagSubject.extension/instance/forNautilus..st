*GT-Examples-UI
forNautilus: aBlock
	self exists ifFalse: [ ^ self ].
	
	aBlock 
		value: #'Browse tag-subject "' ,  self theTagName , '"'
		value: [ self theTag browse ]