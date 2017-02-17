updating
removeColumn: aNumber
	values := values collect: [ :v | v copyWithoutIndex: aNumber ].
	firstRow ifNotNil: [ firstRow := firstRow copyWithoutIndex: aNumber ]