tests
testIndexedColumnDesc

	self 
		parse: ' colName desc' "result should be #(' colName ' nil 'desc') "
		rule: #indexedColumn.
