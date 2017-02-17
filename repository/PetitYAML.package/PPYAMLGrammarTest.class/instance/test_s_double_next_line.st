spec
test_s_double_next_line
	self parse: '
 abc' rule: #s_double_next_line.
	self assert: result = ' abc'.
	
	self parse: '
 
  abc' rule: #s_double_next_line.
	self assert: result = '
abc'.

	self parse: '
 
  abc
  def' rule: #s_double_next_line.
	self assert: result = '
abc def'.

	self parse: '
 abc ' rule: #s_double_next_line.
	self assert: result = ' abc '.