private - backend interface
pvtResolvableProperties

	^ super pvtResolvableProperties, { 
		#superclass -> superclass. 
		#localMethods -> localMethods. 
		#protocols -> protocols. 
		#traitComposition -> traitComposition.  
		#metaclass -> metaclass.  
		#tagsForMethods -> tagsForMethods. 
 		#tags -> tags. 
    	}, self behaviorStrategy pvtResolvableProperties
	
	