enumerating by reference version
selectBornPriorTo: aVersion
	
	^self
		select: [:eachHistory | eachHistory first referenceVersion < aVersion]