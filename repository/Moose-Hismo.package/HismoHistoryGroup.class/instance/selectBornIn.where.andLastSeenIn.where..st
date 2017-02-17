enumerating by reference version
selectBornIn: birthVersion where: birthRelationBlock andLastSeenIn: deathVersion where: deathRelationBlock
	"This is a complicated message... and probably needs renaming"
	
	^self
		select:
			[:eachHistory | 
			(birthRelationBlock
				value: eachHistory first referenceVersion
				value: birthVersion)
				and:
					[deathRelationBlock
						value: eachHistory last referenceVersion
						value: deathVersion]]