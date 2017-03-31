enumerating by reference version
selectLastSeenPriorToOrIn: aVersion
	
	^self
		select: [:eachHistory | eachHistory last referenceVersion <= aVersion]