enumerating by reference version
selectLastSeenIn: aVersion
	
	^self
		select: [:eachHistory | eachHistory last referenceVersion = aVersion]