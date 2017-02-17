moosequery-queries-generic
queryAll: anInOutSymbol in: aCollection
	| aTmpColl aTmpColl2 |
	aTmpColl2 := self queryAllLocal: anInOutSymbol.
	self childrenAccessors
		do: [ :anAccessor | 
			aTmpColl := (self perform: anAccessor)
				collect: [ :aChild | aChild queryAll: anInOutSymbol in: aCollection ] ].
	aTmpColl isNotNil ifTrue: [aTmpColl := aTmpColl flattened].
	aTmpColl isEmptyOrNil	ifFalse: [ aCollection addAll: aTmpColl ].
	aTmpColl2 isEmptyOrNil ifFalse: [ aCollection addAll: aTmpColl2 ].
	^ aCollection