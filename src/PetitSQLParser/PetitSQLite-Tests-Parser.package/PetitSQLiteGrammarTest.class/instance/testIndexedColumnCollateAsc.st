tests
testIndexedColumnCollateAsc

	self 
		parse: ' colName collate collateNAme asc ' "result should be #(' colName ' #('collate' 'collateNAme ') 'asc') "
		rule: #indexedColumn.