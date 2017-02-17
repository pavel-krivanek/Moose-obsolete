test-grammar
testMultilineCommentSingleQuot
	self parse: '''''''
		whatever
	''''''' rule: #multilineComment.