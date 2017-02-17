enumerating by reference version
select: aBlock appliedForReferenceVersionCollection: aReferenceVersionCollection
	
	| selectedGroup selectedGroupItemNames |
	selectedGroup := (self selectFromReferenceVersionCollection:
			aReferenceVersionCollection) select: aBlock.
	selectedGroupItemNames := selectedGroup collect: [:each | each mooseName].
	^self select: [:each | selectedGroupItemNames includes: each mooseName]