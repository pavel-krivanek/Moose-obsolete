enumerating by reference version
selectBornPriorToOrIn: aVersion
	
	^self
		select: [:eachHistory | eachHistory first referenceVersion <= aVersion]