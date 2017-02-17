tests
testDelete
	self 
		parse: ' DELETE ' "result should be 'DELETE' "
		rule: #delete.

	self 
		parse: 'Delete ' "result should be 'Delete' "
		rule: #delete.