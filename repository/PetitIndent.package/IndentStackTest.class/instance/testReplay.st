as yet unclassified
testReplay
	stack := IndentStack new.
	stack push: 'a' asParser.
	stack push: 'b' asParser.
	
	context := PPContext new.
	context stream: 'ab' asPetitStream.
	
	result := stack replay: context.
	
	
	self assert: result = {'a' . 'b'} asOrderedCollection.
	self assert: context atEnd.
	
	stack := IndentStack new.
	context := PPContext new.
	context stream: 'ab' asPetitStream.
	
	result := stack replay: context.
	self assert: result = #() asOrderedCollection.
	self assert: context position = 0.
	


	stack := IndentStack new.
	stack push: 'a' asParser.
	stack push: 'b' asParser.
	
	context := PPContext new.
	context stream: 'ac' asPetitStream.
	
	result := stack replay: context.
	
	self assert: result isPetitFailure.
	self assert: context position = 0.