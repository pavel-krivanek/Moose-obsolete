as yet unclassified
testMemo
	| memento |
	context := PPContext new.
	context stream: 'aaa' asPetitStream.
	
	stack := context indentStack.
	stack push: 'a' asParser.
	stack push: 'b' asParser.
	self assert: stack size = 2.
	
	memento := context remember.
	
	stack pop.
	stack pop.
	self assert: stack size = 0.
	
	context restore: memento.
	stack := context indentStack.
	
	self assert: stack size = 2.
	
	
