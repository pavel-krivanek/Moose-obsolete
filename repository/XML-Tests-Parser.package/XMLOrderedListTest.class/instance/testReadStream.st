tests
testReadStream
	| list stream elements |

	list := self listWithItems.
	stream := list readStream.
	self assert: (stream isKindOf: ReadStream).

	elements := self listItems asOrderedCollection.
	[stream atEnd]
		whileFalse: [self assert: stream next = elements removeFirst].
	self assert: elements isEmpty.