copying
copyWithFragment: aString
	^ self copy rawFragment: (self percentEncode: aString)