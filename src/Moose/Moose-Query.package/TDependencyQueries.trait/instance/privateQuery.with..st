moosequery-queries-generic
privateQuery: anInOutSymbol with: aFAMIXClassAssociation
	| aTmpColl aTmpColl2 |
	aTmpColl2 := self
		queryLocal: anInOutSymbol
		with: aFAMIXClassAssociation.
	aTmpColl := self childrenSelectors
		flatCollect: [ :anAccessor | 
			(self perform: anAccessor) asMooseGroup
				flatCollect:
					[ :aChild | aChild privateQuery: anInOutSymbol with: aFAMIXClassAssociation ] ].
	^ aTmpColl union: aTmpColl2