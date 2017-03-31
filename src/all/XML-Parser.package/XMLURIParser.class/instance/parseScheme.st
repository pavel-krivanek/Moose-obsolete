parsing
parseScheme
	| oldPosition scheme |

	oldPosition := self position.
	scheme := self nextDelimitedBy: SchemeDelimiters.
	(self peekFor: $:)
		ifTrue: [^ scheme asLowercase]
		ifFalse: [
			self position: oldPosition.
			^ ''].