testing
otherFragment: frag 
	 
	^self referenceCode = frag 
		ifTrue: [self duplicateCode] 
		ifFalse: [self referenceCode]