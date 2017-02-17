*GT-Examples-UI
forNautilus: aBlock
	self exists ifFalse: [ ^ self ].
	
	aBlock 
		value: #'Browse package-subject "' ,  self thePackageName , '"'
		value: [ self thePackage browse ]