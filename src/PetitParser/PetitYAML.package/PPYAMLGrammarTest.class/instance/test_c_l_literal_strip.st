spec
test_c_l_literal_strip
	self parse: '|-
  # text
  
 # Clip
  # comments:
' rule: #c_l_literal.

	self assert: result = '# text'