enumerating by version index
selectByExpression: anExpression appliedFromVersionIndex: aStartIndex toVersionIndexAndPresentInIt: anEndIndex
	
	| selectedGroup selectedGroupItemNames targetGroup |
	targetGroup := self selectFromVersionIndexCollectionAndPresentInTheLastSpecifiedVersion:
			(aStartIndex to: anEndIndex) asOrderedCollection.
	selectedGroup := anExpression value: targetGroup.
	selectedGroupItemNames := selectedGroup collect: [:each | each mooseName].
	^self select: [:each | selectedGroupItemNames includes: each mooseName]