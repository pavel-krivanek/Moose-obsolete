query
query: aFAMIXClassAssociation for: anEntity in: aCollection
	| aTmpColl aTmpColl2 |
	aTmpColl2 := self queryLocal: aFAMIXClassAssociation for: anEntity.
	aTmpColl := anEntity childrenSelectors
		flatCollect: [ :anAccessor | (anEntity perform: anAccessor) ifNil: [ #() ] ifNotNil: [ :coll | coll asCollection flatCollect: [ :aChild | self privateQuery: aFAMIXClassAssociation for: aChild ] ] ].
	^ (aTmpColl isEmptyOrNil or: [ aTmpColl2 isEmptyOrNil ])
		ifFalse: [ aTmpColl union: aTmpColl2 ]
		ifTrue: [ nil ]