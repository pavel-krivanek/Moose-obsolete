moosequery-queries-generic
query: anInOutSymbol with: aFAMIXClassAssociation in: aCollection
	| aTmpColl aTmpColl2 |
	aTmpColl2 := self queryLocal: anInOutSymbol with: aFAMIXClassAssociation.
	aTmpColl := self childrenAccessors
		flatCollect: [ :anAccessor | (self perform: anAccessor) flatCollect: [ :aChild | aChild query: anInOutSymbol with: aFAMIXClassAssociation ] ].
	^ aTmpColl isEmptyOrNil
		ifFalse: [ 
			aTmpColl2 isEmptyOrNil
				ifFalse: [ aTmpColl union: aTmpColl2 ]
				ifTrue: [ nil ] ]
		ifTrue: [ nil ]