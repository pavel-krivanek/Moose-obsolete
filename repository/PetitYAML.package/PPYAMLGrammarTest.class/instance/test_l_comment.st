spec
test_l_comment
	self parse: ' # whatever' rule: #l_comment.
	self fail: '' rule: #l_comment.