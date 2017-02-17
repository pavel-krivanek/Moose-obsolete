enumerating by version index
selectByExpression: anExpression appliedFromVersionIndex: aStartIndex
	
	| selectedGroup selectedGroupItemNames |
	selectedGroup := (self
		selectFromVersionIndexCollection:
			(aStartIndex to: self versions size) asOrderedCollection)
		selectByExpression: anExpression.
	selectedGroupItemNames := selectedGroup collect: [:each | each mooseName].
	^self select: [:each | selectedGroupItemNames includes: each mooseName]