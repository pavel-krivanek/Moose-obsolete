private - backend interface
pvtResolvableProperties

	^ super pvtResolvableProperties, { 
		#content -> content. 
		#author -> author. 
		#time -> time. 
	}
	
	