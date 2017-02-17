instance creation
fromCamelcaseString: aString
	
	^((MalCamelcaseScanner new onString: aString) allTerms)
		stemAll;
		removeStopwords