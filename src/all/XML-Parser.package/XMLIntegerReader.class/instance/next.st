private
next
	| nextChar |

	self atEnd
		ifFalse: [
			nextChar := readStream next.
			printStream
				ifNotNil: [printStream nextPut: nextChar]].
	^ nextChar.