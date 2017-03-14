*SmallDude-Moose-testing
isMultipliedWithin: aGroup 
	 
	| intersection | 
	^self allMultiplications 
		anySatisfy: 
			[:each |  
			intersection := each multiplyingEntities intersection: aGroup. 
			intersection size > 1 and: [intersection includes: self]]