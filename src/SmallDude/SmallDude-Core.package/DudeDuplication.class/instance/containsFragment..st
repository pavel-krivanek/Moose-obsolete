testing
containsFragment: frag 
	 
	^self referenceCode = frag or: [self duplicateCode = frag]