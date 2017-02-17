versions
atReferenceVersion: aReferenceVersion
	"returns the version in the current history that corresponds to aReferenceVersion"
	
	^self versions
		detect: [:each | each referenceVersion = aReferenceVersion]
		ifNone: [nil]