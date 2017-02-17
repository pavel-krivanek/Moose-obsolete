tests
testNextPushedBackToken
	| adapter ncNamePosition ncName |

	adapter := self newStreamAdapterOnNCName.
	self assert: adapter nextPushedBackToken isNil.

	ncNamePosition := adapter position.
	ncName := adapter nextNCName.
	2 timesRepeat: [| token |
		adapter
			pushBackNCName: ncName
			position: ncNamePosition.
		token := adapter nextPushedBackToken.
		self
			deny: token isNil;
			assert: token value = ncName;
			assert: adapter nextPushedBackToken isNil;
			assert: adapter atEnd.

		adapter
			pushBackNCName: ncName
			position: ncNamePosition.
		"if the current position doesn't match the pushed back token position,
		then it should return nil"
		adapter next.
		self assert: adapter nextPushedBackToken isNil].