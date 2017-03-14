parsing - peeking
peekForNumberLiteral
	| startPosition |

	startPosition := readStream position.
	writeStream reset.
	self atDigit
		ifTrue: [
			self nextDigitsOnWriteStream.
			(readStream peekFor: $.)
				ifTrue: [
					writeStream nextPut: $..
					self atDigit
						ifTrue: [self nextDigitsOnWriteStream]].
			handler handleNumberLiteral: writeStream contents.
			^ true].
	((readStream peekFor: $.)
		and: [self atDigit])
		ifTrue: [
			writeStream nextPut: $..
			self nextDigitsOnWriteStream.
			handler handleNumberLiteral: writeStream contents.
			^ true].
	readStream position: startPosition.
	^ false.