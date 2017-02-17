printing
printAuthorityPrefixOn: aStream
	(self hasAuthorityPrefix
		or: [self hasScheme not and: [self hasAuthority]])
		ifTrue: [aStream nextPutAll: '//']