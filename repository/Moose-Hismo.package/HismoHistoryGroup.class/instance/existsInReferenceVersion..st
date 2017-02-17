public interface
existsInReferenceVersion: aReferenceVersion
	
	^(self versions
		select: [:each | each referenceVersion = aReferenceVersion]) isEmpty not