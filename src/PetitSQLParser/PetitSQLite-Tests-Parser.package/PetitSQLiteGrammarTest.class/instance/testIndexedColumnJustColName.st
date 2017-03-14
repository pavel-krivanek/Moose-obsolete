tests
testIndexedColumnJustColName

	self 
		parse: ' colName ' "result should be #(' colName ' nil nil) "
		rule: #indexedColumn.