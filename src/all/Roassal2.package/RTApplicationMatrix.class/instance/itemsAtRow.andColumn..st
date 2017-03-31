accessing
itemsAtRow: row andColumn: column
	^ (items select: [ :item | item row = row and: [ item column = column ] ]) asArray