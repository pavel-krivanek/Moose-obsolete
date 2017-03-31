spec
test_c_l_literal_failures
	context YAMLContext: #'block-in'.
	"Should fail, but it does not, probably have to add some functionality to auto-detect"
	"
	self fail: '|
  
 text' rule: #c_l_literal.
	"
	
	self fail: '>
  text
 text' rule: #c_l_literal.

	self fail: '|2
 text' rule: #c_l_literal.