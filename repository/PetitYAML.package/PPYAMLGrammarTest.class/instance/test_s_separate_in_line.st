spec
test_s_separate_in_line
	self parse: ' ' rule: #s_separate_in_line.
	self assert: result = ' '.
	self parse: '   ' rule: #s_separate_in_line	.
	self assert: result = '   '.