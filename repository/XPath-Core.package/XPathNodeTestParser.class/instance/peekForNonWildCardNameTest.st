parsing - peeking
peekForNonWildCardNameTest
	| startPosition ncName |

	startPosition := readStream position.
	((ncName := self nextNCNameOptional: true) notNil
		and: [self peekForNameTestStartingWith: ncName])
		ifTrue: [^ true]
		ifFalse: [
			ncName
				ifNotNil: [
					readStream
						pushBackNCName: ncName
						position: startPosition].
			^ false].