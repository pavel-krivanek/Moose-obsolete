instance creation
name: anXmlName value: aString
	^ self basicNew
		setName: anXmlName;
		setValue: aString;
		yourself