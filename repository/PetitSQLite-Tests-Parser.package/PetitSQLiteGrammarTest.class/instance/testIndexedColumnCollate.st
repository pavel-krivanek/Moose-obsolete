tests
testIndexedColumnCollate

	self 
		parse: ' colName collate collateNAme ' "result should be #(' colName ' #('collate' 'collateNAme ') nil) "
		rule: #indexedColumn.
