adding
addDocument: aString withContent: contentString
	
	self
		addDocument: aString
		with: (MalTerms new
				addString: contentString using: MalCamelcaseScanner;
				yourself)