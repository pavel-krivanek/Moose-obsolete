as yet unclassified
testCompare
	| anotherStack parser |
	context := PPContext new.
	stack := context indentStack.

	context := PPContext new.
	anotherStack := context indentStack.
	
	self assert: stack ~~ anotherStack.
	self assert: stack = anotherStack.
	
	parser := 'a' asParser.
	stack push: parser.
	self assert: stack ~= anotherStack.
	
	anotherStack push: parser.
	self assert: stack = anotherStack.
