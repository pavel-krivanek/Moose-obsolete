tests
testOnConflict
	self 
		parse: ' ON CONFLICT ' "result should be 'ON CONFLICT' "
		rule: #onConflict.

	self 
		parse: 'On Conflict ' "result should be 'On Conflict' "
		rule: #onConflict.