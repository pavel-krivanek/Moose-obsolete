public interface
atReferenceVersion: aReferenceVersion
	
	^(self versions
		select: [:each | each referenceVersion = aReferenceVersion]) first