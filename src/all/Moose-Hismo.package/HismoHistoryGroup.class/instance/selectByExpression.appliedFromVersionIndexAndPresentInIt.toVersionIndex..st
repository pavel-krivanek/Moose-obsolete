enumerating by version index
selectByExpression: anExpression appliedFromVersionIndexAndPresentInIt: aStartIndex toVersionIndex: anEndIndex
	
	| selectedGroup selectedGroupItemNames targetGroup |
	targetGroup := self
		selectFromVersionIndexCollectionAndPresentInTheFirstSpecifiedVersion:
			(aStartIndex to: anEndIndex) asOrderedCollection.
	selectedGroup := anExpression value: targetGroup.
	selectedGroupItemNames := selectedGroup collect: [:each | each mooseName].
	^self select: [:each | selectedGroupItemNames includes: each mooseName]