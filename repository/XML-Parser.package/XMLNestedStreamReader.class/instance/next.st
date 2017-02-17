accessing
next
	| nextChar |

	peekChar
		ifNil: [nextChar := self basicNext]
		ifNotNil: [
			nextChar := peekChar.
			peekChar := nil].

	readLimit
		ifNotNil: [
			(readLimit := readLimit - 1) >= 0
				ifFalse: [self errorReadLimitExceeded]].
	isExternal
		ifTrue: [
			currentPosition := currentPosition + 1.
			nextChar == normalizedLineEndingChar
				ifTrue: [
					currentLineNumber := currentLineNumber + 1.
					currentLineStartPosition := currentPosition]].

	^ nextChar.