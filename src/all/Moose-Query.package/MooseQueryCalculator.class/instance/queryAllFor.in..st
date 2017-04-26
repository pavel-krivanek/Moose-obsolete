query
queryAllFor: anEntity in: aCollection
	| aTmpColl aTmpColl2 |
	aTmpColl2 := self queryAllLocalFor: anEntity.
	anEntity childrenAccessors do: [ :anAccessor | aTmpColl := (anEntity perform: anAccessor) collect: [ :aChild | self queryAllFor: aChild in: aCollection ] ].
	aTmpColl isNotNil
		ifTrue: [ aTmpColl := aTmpColl flattened ].
	aTmpColl isEmptyOrNil
		ifFalse: [ aCollection addAll: aTmpColl ].
	aTmpColl2 isEmptyOrNil
		ifFalse: [ aCollection addAll: aTmpColl2 ].
	^ aCollection