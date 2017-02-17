spec
test_c_l_literal_chomping
	self parse: '|-
  text
' rule: #c_l_literal.

	self assert: result = 'text'.
	
		self parse: '|
  text
' rule: #c_l_literal.

	self assert: result = ('text', String cr).


		self parse: '|+
  text
' rule: #c_l_literal.

	self assert: result = ('text', String cr).

