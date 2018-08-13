initialization
pvtResolvableProperties

	^ super pvtResolvableProperties, { 
		#comment -> comment. 
		#classVariables -> classVariables. 
		#package -> package. 
		#sharedPools -> sharedPools. 
	}
	
	
