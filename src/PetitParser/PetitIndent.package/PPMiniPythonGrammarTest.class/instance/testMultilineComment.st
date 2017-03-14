test-grammar
testMultilineComment
	self parse: '"""
		whatever
	"""' rule: #multilineComment.