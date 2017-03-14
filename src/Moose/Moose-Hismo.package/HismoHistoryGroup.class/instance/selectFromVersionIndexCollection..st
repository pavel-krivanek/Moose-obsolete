enumerating by version index
selectFromVersionIndexCollection: aCollection
	"returns the history made by the specified range of versions"
	
	| versionCollection |
	versionCollection := OrderedCollection new.
	aCollection
		do:
			[:eachIndex | versionCollection add: (self versions at: eachIndex) referenceVersion].
	^self selectFromReferenceVersionCollection: versionCollection