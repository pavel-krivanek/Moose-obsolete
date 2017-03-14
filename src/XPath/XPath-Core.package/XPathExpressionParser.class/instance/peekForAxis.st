parsing - peeking
peekForAxis
	| startPosition ncName |

	self peekForAbbreviatedAxis
		ifTrue: [^ true].
	startPosition := readStream position.
	(ncName := self nextNCNameOptional: true)
		ifNil: [^ false].
	readStream skipSeparators.
	((readStream peekFor: $:)
		and: [readStream peekFor: $:])
		ifFalse: [
			readStream
				pushBackNCName: ncName
				position: startPosition.
			^ false].
	currentAxis axisSpecifier: ncName.
	^ true.