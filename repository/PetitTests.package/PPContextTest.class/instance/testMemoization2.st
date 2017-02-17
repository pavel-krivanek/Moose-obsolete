tests
testMemoization2
	| stream memento |
	stream := 'abc' asPetitStream.
	context := context stream: stream.
	
	memento := context remember.
	
	context next.
	self assert: context position = 1.
	
	context restore: memento.
	self assert: context position = 0.
