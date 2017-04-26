moosequery-queries-generic
queryAll: anInOutSymbol in: aCollection
	^ (MooseQueryCalculator direction: anInOutSymbol) queryAllFor: self in: aCollection