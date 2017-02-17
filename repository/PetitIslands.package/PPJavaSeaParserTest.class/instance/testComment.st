tests
testComment
	| input  |
	input := '/* hello there */'.
	self parse: input rule: #comment