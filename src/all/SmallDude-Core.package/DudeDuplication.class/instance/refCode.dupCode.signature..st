initialize-release
refCode: aCodeFragment dupCode: anotherCodeFragment signature: aString 
	 
	signature := aString. 
	referenceCode := aCodeFragment. 
	duplicateCode := anotherCodeFragment. 
	self isSelfDuplication 
		ifTrue: 
			[referenceCode clonedInternally: true. 
			duplicateCode clonedInternally: true] 
		ifFalse: 
			[referenceCode clonedExternally: true. 
			duplicateCode clonedExternally: true]