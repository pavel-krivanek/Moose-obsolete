accessing
at: index put: aBoolean 
	 
	aBoolean 
		ifTrue: [self putTrueAt: index] 
		ifFalse: [self putFalseAt: index]