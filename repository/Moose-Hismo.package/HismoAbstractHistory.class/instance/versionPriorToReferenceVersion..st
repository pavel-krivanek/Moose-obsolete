versions
versionPriorToReferenceVersion: aReferenceVersion
	"returns the version of the current history that comes before the version present in aReferenceVersion"
	
	1
		to: versions size
		do:
			[:index | 
			(self versions at: index) referenceVersion = aReferenceVersion
				ifTrue:
					[index = 1
						ifTrue: [^nil]
						ifFalse: [^self versions at: index - 1]]].
	^nil