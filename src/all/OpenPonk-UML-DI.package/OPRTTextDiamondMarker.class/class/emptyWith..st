instance creation
emptyWith: aString
	^ self new
		fillColor: Color white;
		text: aString;
		yourself