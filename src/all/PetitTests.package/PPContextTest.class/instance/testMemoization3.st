tests
testMemoization3
	| stream memento memento2 collection |
	stream := 'abc' asPetitStream.
	context := context stream: stream.
	collection := OrderedCollection new.

	memento := context remember.
	context propertyAt: #foo put: collection.
	memento2 := context remember.
	
	context restore: memento.
	self assert: (context hasProperty: #foo) not.
	
	context restore: memento2.
	self assert: (context hasProperty: #foo).