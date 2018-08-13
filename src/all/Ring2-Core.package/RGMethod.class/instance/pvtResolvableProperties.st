private - backend interface
pvtResolvableProperties

	^ super pvtResolvableProperties, { 
		#protocol -> protocol. 
		#sourceCode -> sourceCode. 
		#package -> package. 
		#author -> author. 
		#time -> time. 
		#tags -> tags. 
	}
	
	