instance creation
fromTagNamed: aString
	^ self new 
		theTag: nil;
		theTagName: aString asString;
		yourself