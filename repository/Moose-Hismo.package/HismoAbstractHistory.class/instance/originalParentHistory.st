public interface
originalParentHistory
	
	^self = self parentHistory
		ifTrue: [self]
		ifFalse: [self parentHistory parentHistory]