properties
lookUpPropertyNamed: selector computedAs: aBlock 
	 
	^self privateState cache: selector initializer: aBlock