enumerating by version index
selectByExpression: anExpression appliedFromVersionIndex: aStartIndex toVersionIndex: anEndIndex
	
	| selectedGroup selectedGroupItemNames targetGroup |
	targetGroup := self
		selectFromVersionIndexCollection:
			(aStartIndex to: anEndIndex) asOrderedCollection.
	selectedGroup := targetGroup selectByExpression: anExpression.
	selectedGroupItemNames := selectedGroup collect: [:each | each mooseName].
	^self select: [:each | selectedGroupItemNames includes: each mooseName]