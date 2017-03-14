tests
testRollback
	self 
		parse: ' Rollback ' "result should be 'Rollback' "
		rule: #rollback.

	self 
		parse: 'ROLLBACK ' "result should be 'ROLLBACK' "
		rule: #rollback.