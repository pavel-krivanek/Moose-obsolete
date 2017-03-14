tests
testMemoization
	| stream memento memento2 collection |
	stream := 'abc' asPetitStream.
	context := context stream: stream.
	collection := OrderedCollection new.

	context propertyAt: #foo put: collection.
	
	memento := context remember.
	
	self assert: memento isNil not.
	
	context next.
	collection add: #element.
	self assert: (context propertyAt: #foo) size = 1. 	

	memento2 := context remember.

	context restore: memento.
	self assert: (context propertyAt: #foo) size = 0. 
	self assert: context position = 0.
	
	context restore: memento2.
	self assert: (context propertyAt: #foo) size = 1. 
	self assert: context position = 1.
