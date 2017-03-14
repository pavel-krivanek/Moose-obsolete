copying
copyWithUserInfo: aString
	^ self copy rawUserInfo: (self percentEncode: aString)