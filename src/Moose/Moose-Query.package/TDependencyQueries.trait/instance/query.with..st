moosequery-queries-generic
query: anInOutSymbol with: aFAMIXClassAssociation
	| coll directionSymbol  m2 |
	directionSymbol := self creatingDirectionSymbol: anInOutSymbol.	
	m2 := 'create' , directionSymbol capitalized , 'QueryResultWith:'.
	
	coll:= self privateQuery: anInOutSymbol with: aFAMIXClassAssociation.
	^ self perform: m2 asSymbol with: {coll} flattened