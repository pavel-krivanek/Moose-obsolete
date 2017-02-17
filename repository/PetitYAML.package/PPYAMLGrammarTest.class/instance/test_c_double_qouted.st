spec
test_c_double_qouted
	self parse: '"hi there"' rule: #c_double_quoted.
	self assert: result = 'hi there'.
	
	self parse: '" 1st non-empty

 2nd non-empty 
 3rd non-empty "' rule: #c_double_quoted.
	self assert: result = ' 1st non-empty
2nd non-empty 3rd non-empty '