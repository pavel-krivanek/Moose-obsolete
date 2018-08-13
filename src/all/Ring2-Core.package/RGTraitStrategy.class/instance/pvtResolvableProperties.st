accessing
pvtResolvableProperties

	^ super pvtResolvableProperties, { 
		#classTrait -> classTrait. 
		#comment -> comment. 
		#package -> package. 
   	}
	
	