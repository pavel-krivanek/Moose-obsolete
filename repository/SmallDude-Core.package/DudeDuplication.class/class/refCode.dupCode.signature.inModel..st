instance creation
refCode: aCodeFragment dupCode: anotherCodeFragment signature: aString inModel: aModel 
	 
	| result | 
	result := self new 
		refCode: aCodeFragment dupCode: anotherCodeFragment signature: aString; 
		yourself. 
	aModel add: result. 
	^result