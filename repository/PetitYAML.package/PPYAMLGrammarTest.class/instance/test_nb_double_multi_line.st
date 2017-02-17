spec
test_nb_double_multi_line
	self parse: 'hi there' rule: #nb_double_multi_line.
	self assert: result = 'hi there'.
	
	self parse: ' hi there  ' rule: #nb_double_multi_line.
	self assert: result = ' hi there  '.


	self parse: ' 1st non-empty

 2nd non-empty 
 3rd non-empty ' rule: #nb_double_multi_line.
	self assert: result = ' 1st non-empty
2nd non-empty 3rd non-empty ' 