instance creation
searchFor: aSearchParser replaceWith: aReplaceParser when: aVerificationBlock
	^ (self searchFor: aSearchParser) 
		setReplaceParser: aReplaceParser;
		setVerificationBlock: aVerificationBlock;
		yourself