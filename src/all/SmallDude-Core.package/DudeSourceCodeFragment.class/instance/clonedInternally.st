accessing
clonedInternally 
	 
	^self privateState 
		propertyAt: #ClonedInternally 
		ifAbsent: [false]