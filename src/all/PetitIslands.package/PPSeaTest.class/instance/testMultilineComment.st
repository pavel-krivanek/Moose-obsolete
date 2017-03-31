tests - water objects
testMultilineComment
	|  parser |
	parser := self multilineCommentParser.
	
	self assert: parser parse: '/* hello there */'.
	self assert: parser parse: '/* class Bar endclass */'.
