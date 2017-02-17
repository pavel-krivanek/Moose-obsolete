enumerating by reference version
selectLastSeenPriorTo: aVersion
	
	^self
		select: [:eachHistory | eachHistory last referenceVersion < aVersion]