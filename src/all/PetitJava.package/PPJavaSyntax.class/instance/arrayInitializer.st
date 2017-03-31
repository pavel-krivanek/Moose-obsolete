grammar
arrayInitializer 

	^ (self tokenFor: '{'),
		(variableInitializer , ((self tokenFor: ','), variableInitializer ) star) optional,
		(self tokenFor: ',') optional,
	   (self tokenFor: '}')