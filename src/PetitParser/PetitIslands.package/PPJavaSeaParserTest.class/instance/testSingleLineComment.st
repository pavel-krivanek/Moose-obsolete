tests
testSingleLineComment
	| input  |
	input := '// hello there
'.
	self parse: input rule: #singleLineComment.