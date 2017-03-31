public interface
referenceHistory
	
	^self isEmpty
		ifTrue: [nil]
		ifFalse: [self first referenceHistory]