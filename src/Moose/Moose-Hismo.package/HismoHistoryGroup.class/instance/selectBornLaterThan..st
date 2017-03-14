enumerating by reference version
selectBornLaterThan: aVersion
	
	^self
		select: [:eachHistory | eachHistory first referenceVersion > aVersion]