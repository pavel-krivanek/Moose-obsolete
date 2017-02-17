instance creation
fromFile: aFile
	
	^(MalTermScanner new)
		onFile: aFile;
		allTerms