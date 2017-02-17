tests
testWriteStream
	| list stream |

	list := self emptyList.
	stream := list writeStream.
	self assert: (stream isKindOf: WriteStream).

	self listItems do: [:each | stream nextPut: each].
	self assert:
		(stream contents) asOrderedCollection =
			self listItems asOrderedCollection.