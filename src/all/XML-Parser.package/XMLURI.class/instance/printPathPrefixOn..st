printing
printPathPrefixOn: aStream
	(self hasPath
		and: [self hasAbsolutePath not
			and: [self hasScheme or: [self hasAuthority]]])
		ifTrue: [aStream nextPut: $/]