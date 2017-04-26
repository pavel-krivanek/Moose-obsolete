moosequery-queries-generic
query: anInOutSymbol with: aFAMIXClassAssociation in: aCollection
	^ (MooseQueryCalculator direction: anInOutSymbol) query: aFAMIXClassAssociation for: self in: aCollection