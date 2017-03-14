tests
testReferences
	self 
		parse: ' REFERENCES ' "result should be 'REFERENCES' "
		rule: #references.

	self 
		parse: 'References ' "result should be 'References' "
		rule: #references.