query
privateQuery: aFAMIXClassAssociation for: anEntity
	| aTmpColl aTmpColl2 |
	aTmpColl2 := self queryLocal: aFAMIXClassAssociation for: anEntity.
	aTmpColl := anEntity childrenSelectors
		flatCollect: [ :anAccessor | (anEntity perform: anAccessor) ifNil: [ #() ] ifNotNil: [ :coll | coll asCollection flatCollect: [ :aChild | self privateQuery: aFAMIXClassAssociation for: aChild ] ] ].
	^ aTmpColl union: aTmpColl2