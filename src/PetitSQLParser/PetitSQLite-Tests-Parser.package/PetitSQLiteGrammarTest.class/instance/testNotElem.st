tests
testNotElem
	self 
		parse: ' NOT ' "result should be 'NOT' "
		rule: #notElem.

	self 
		parse: 'Not ' "result should be 'Not' "
		rule: #notElem.