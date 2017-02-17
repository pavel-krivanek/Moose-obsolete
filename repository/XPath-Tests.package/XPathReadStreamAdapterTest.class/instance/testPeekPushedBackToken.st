tests
testPeekPushedBackToken
	| adapter ncNamePosition ncName |

	adapter := self newStreamAdapterOnNCName.
	self assert: adapter peekPushedBackToken isNil.

	ncNamePosition := adapter position.
	ncName := adapter nextNCName.
	2 timesRepeat: [
		adapter
			pushBackNCName: ncName
			position: ncNamePosition.
		self
			assert: adapter peekPushedBackToken notNil;
			assert: adapter peekPushedBackToken value = ncName;
			assert: adapter peekPushedBackToken position = ncNamePosition.
	
		"if the current position doesn't match the pushed back token position,
		then it should return nil"
		adapter next.
		self assert: adapter peekPushedBackToken isNil].