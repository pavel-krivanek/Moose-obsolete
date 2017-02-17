testing-stream
testText
	| stream |
	stream := 'abc' asText asPetitStream.
	self assert: stream class equals: PPStream