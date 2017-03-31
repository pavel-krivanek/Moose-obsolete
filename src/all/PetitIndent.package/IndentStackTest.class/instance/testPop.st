as yet unclassified
testPop
	| parser |
	stack := IndentStack new.
	parser := 'foo' asParser.
	
	stack push: parser.
	
	self assert: stack pop = parser.
	self assert: stack size = 0.
	
	self assert: stack pop isPetitFailure.
	self assert: stack size = 0.