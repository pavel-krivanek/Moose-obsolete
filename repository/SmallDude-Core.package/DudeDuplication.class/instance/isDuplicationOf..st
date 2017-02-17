testing
isDuplicationOf: modelEntity 
	 
	^self referenceCode entity == modelEntity 
		or: [self duplicateCode entity == modelEntity]