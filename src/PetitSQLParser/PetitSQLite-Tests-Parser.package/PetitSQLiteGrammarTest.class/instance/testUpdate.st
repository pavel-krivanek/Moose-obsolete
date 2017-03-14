tests
testUpdate
	self 
		parse: ' UPDATE ' "result should be 'UPDATE' "
		rule: #update.

	self 
		parse: 'Update ' "result should be 'Update' "
		rule: #update.