enumerating
selectFromVersionIndexCollection: aCollection
	"returns the history made by the specified versions"
	
	| selectedVersions selectedHistory |
	selectedVersions := OrderedCollection new.
	aCollection
		do: [:eachIndex | selectedVersions add: (self versions at: eachIndex)].
	selectedHistory := self createEmptyHistory.
	selectedVersions
		do:
			[:each | 
			| newVersion |
			newVersion := each copy.
			selectedHistory addLast: newVersion.
			newVersion history: selectedHistory].
	^selectedHistory