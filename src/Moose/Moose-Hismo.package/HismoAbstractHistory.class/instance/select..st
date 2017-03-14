enumerating
select: aBlock
	"returns a sub history formed by the versions that satisfy aBlock"
	
	| selectedVersions selectedHistory |
	selectedVersions := self versions select: aBlock.
	selectedHistory := self createEmptyHistory.
	selectedHistory referenceHistory: self referenceHistory.
	selectedVersions
		do:
			[:each | 
			| newVersion |
			newVersion := each copy.
			selectedHistory addLast: newVersion.
			newVersion history: selectedHistory].
	^selectedHistory