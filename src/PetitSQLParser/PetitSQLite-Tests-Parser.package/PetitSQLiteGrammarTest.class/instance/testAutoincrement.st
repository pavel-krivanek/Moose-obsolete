tests
testAutoincrement
	self 
		parse: ' AUTOINCREMENT' "result should be 'AUTOINCREMENT' "
		rule: #autoincrement.

	self 
		parse: 'Autoincrement ' "result should be 'Autoincrement' "
		rule: #autoincrement.