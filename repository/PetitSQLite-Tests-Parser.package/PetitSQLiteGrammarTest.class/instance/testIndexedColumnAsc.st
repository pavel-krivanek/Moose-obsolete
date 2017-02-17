tests
testIndexedColumnAsc

	self 
		parse: ' colName asc ' "result should be #(' colName ' nil 'asc')"
		rule: #indexedColumn.