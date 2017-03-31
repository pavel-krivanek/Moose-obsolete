copying
copyWithScheme: aString
	^ self copy
		scheme: aString;
		hasAuthorityPrefix:
			(self hasAuthorityPrefix
				or: [self hasScheme not])