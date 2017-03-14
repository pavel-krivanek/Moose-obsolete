as yet unclassified
testCompare2
	| anotherStack  |
	context := PPContext new.
	context stream: 'aaa' asPetitStream.
	stack := context indentStack.
	
	stack push: 'a' asParser.

	anotherStack := context remember indentStack.
	
	self assert: stack ~~ anotherStack.
	self assert: stack = anotherStack.