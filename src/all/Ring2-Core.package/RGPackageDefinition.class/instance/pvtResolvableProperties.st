private - backend interface
pvtResolvableProperties

	^ super pvtResolvableProperties, { 
		#definedBehaviors -> definedBehaviors. 
		#extensionMethods -> extensionMethods. 
		#tagsForClasses -> tagsForClasses
	}
	
	