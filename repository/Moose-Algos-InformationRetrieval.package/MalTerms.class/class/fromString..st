instance creation
fromString: aString

	| scanner |
	scanner := (MalTermScanner new)	..
	scanner onString: aString.	
	^ scanner allTerms.
			
		