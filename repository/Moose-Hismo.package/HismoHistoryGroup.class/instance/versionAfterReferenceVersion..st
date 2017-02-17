public interface
versionAfterReferenceVersion: aReferenceVersion
	
	1
		to: self versions size - 1
		do:
			[:index | 
			(self versions at: index) referenceVersion = aReferenceVersion
				ifTrue: [^self versions at: index + 1]].
	^nil