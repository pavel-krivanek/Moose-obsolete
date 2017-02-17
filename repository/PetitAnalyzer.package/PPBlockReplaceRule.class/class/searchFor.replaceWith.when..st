instance creation
searchFor: aSearchParser replaceWith: aReplaceBlock when: aVerificationBlock
	^ (self searchFor: aSearchParser) 
		setReplaceBlock: aReplaceBlock;
		setVerificationBlock: aVerificationBlock;
		yourself