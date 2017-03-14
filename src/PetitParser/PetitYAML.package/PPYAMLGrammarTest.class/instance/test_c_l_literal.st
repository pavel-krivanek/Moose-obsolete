spec
test_c_l_literal
	self parse: '|
 literal
  text
' rule: #c_l_literal.
	self assert: result = 'literal
 text
'.

	self parse: '|
 
  
  literal
   
  
  text

 # Comment' rule: #c_l_literal.
	self assert: result = '

literal
 

text
'
	