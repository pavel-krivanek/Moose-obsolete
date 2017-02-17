enumerating by reference version
selectLastSeenLaterThanOrIn: aVersion
	
	^self
		select: [:eachHistory | eachHistory last referenceVersion >= aVersion]