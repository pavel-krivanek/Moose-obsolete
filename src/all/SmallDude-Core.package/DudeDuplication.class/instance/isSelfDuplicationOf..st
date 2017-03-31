testing
isSelfDuplicationOf: modelEntity 
	 
	^self isSelfDuplication and: [self referenceCode entity == modelEntity]