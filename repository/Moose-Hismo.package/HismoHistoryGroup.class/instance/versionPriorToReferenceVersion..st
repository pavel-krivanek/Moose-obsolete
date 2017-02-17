public interface
versionPriorToReferenceVersion: aReferenceVersion
	
	2
		to: self versions size
		do:
			[:index | 
			(self versions at: index) referenceVersion = aReferenceVersion
				ifTrue: [^self versions at: index - 1]].
	^nil