enumerating by reference version
selectBornIn: aVersion
	
	^self
		select: [:eachHistory | eachHistory first referenceVersion = aVersion]