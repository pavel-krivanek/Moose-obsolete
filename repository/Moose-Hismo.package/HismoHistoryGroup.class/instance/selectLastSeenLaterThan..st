enumerating by reference version
selectLastSeenLaterThan: aVersion
	
	^self
		select: [:eachHistory | eachHistory last referenceVersion > aVersion]