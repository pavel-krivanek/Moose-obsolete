enumerating by version index
selectByExpression: anExpression appliedFromFirstVersionIndexToVersionIndex: anEndIndex
	
	| selectedGroup selectedGroupItemNames |
	selectedGroup := (self
		selectFromVersionIndexCollection: (1 to: anEndIndex) asOrderedCollection)
		selectByExpression: anExpression.
	selectedGroupItemNames := selectedGroup collect: [:each | each mooseName].
	^self select: [:each | selectedGroupItemNames includes: each mooseName]