tests
testColumn
	self 
		parse: ' COLUMN ' "result should be 'COLUMN' "
		rule: #column.

	self 
		parse: ' Column ' "result should be 'Column' "
		rule: #column.