tests
testRenameTo
	self 
		parse: ' RENAME TO ' "result should be 'RENAME TO' "
		rule: #renameTo.

	self 
		parse: ' rename To ' "result should be 'rename To' "
		rule: #renameTo.