enumerating by version index
selectByExpression: anExpression forVersionIndex: anIndex
	
	| selectedGroup selectedGroupItemNames |
	selectedGroup := (self
		selectFromVersionIndexCollection: (1 to: anIndex) asOrderedCollection)
		selectByExpression: anExpression.
	selectedGroupItemNames := selectedGroup collect: [:each | each mooseName].
	^self select: [:each | selectedGroupItemNames includes: each mooseName]