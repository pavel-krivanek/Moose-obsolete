versions
versionAfterReferenceVersion: aReferenceVersion
	"returns the version of the current history that comes after the version present in aReferenceVersion"
	
	1
		to: versions size - 1
		do:
			[:index | 
			(self versions at: index) referenceVersion = aReferenceVersion
				ifTrue: [^self versions at: index + 1]].
	^nil