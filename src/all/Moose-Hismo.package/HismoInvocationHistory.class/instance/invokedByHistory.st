public interface
invokedByHistory
	
	invokedByHistory isNil
		ifTrue:
			[invokedByHistory := (self referenceHistory allMethodHistories
				select: [:each | each mooseName = self first invokedBy mooseName])
				first].
	^invokedByHistory