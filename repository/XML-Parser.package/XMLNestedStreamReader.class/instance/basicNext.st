private
basicNext
	"Returns the next character in the stream for #next and #peek with CR/LF/CRLF
	line endings normalized (to LF by default) for external streams."
	| nextChar |

	stream atEnd
		ifTrue: [
			self popCurrentStream.
			[stream atEnd]
				whileTrue: [
					nestedStreams size > 0
						ifFalse: [^ nil].
					self popCurrentStream]].
	nextChar := stream next.
	isExternal
		ifTrue: [
			nextChar == LFCharacter
				ifTrue: [^ normalizedLineEndingChar].
			nextChar == CRCharacter
				ifTrue: [
					stream atEnd
						ifFalse: [
							stream peek == LFCharacter
								ifTrue: [stream next]].
					^ normalizedLineEndingChar]].
	^ nextChar.