parsing - peeking
peekForNodeTestStartingWithNCName
	| startPosition ncName |

	startPosition := readStream position.
	(ncName := self nextNCNameOptional: true)
		ifNil: [^ false].
	(self peekForNameTestStartingWithNCName: ncName)
		ifFalse: [
			readStream
				pushBackNCName: ncName
				position: startPosition.
			^ false].
	^ true.