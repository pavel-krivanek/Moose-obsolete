versions
existsInReferenceVersion: aReferenceVersion
	"answers if the history has a version in aReferenceVersion"
	
	^(self versions
		select: [:each | each referenceVersion = aReferenceVersion]) isEmpty not