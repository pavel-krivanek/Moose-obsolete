tests
testReadStream
	| list stream position |

	list := self listWithItems.
	stream := list readStream.
	position := 0.
	self
		assert: stream isStream;
		assert: stream position = 0.
	self listItems do: [:each |
		self
			deny: stream atEnd;
			assert: stream next = each.
		position := position + 1.
		self assert: stream position = position].
	self assert: stream atEnd.