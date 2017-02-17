as yet unclassified
testPush
	| parser |
	stack := IndentStack new.
	parser := 'foo' asParser.
	
	stack push: parser.
	self assert: stack size = 1.
	
	self assert: stack top = parser.