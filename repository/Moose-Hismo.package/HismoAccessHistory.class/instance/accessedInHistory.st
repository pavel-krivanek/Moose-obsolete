public interface
accessedInHistory
	
	accessedInHistory isNil
		ifTrue:
			[accessedInHistory := (self referenceHistory allMethodHistories
				select: [:each | each mooseName = self first accessedIn mooseName])
				first].
	^accessedInHistory