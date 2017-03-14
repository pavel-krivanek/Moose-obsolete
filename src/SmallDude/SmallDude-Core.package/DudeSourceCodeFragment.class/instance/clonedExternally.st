accessing
clonedExternally 
	 
	^self privateState 
		propertyAt: #ClonedExternally 
		ifAbsent: [false]