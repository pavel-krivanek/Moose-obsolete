accessing
peekFor: aCharacter
	(stream atEnd not
		and: [stream peek = aCharacter])
		ifTrue: [
			stream next.
			^ true]
		ifFalse: [^ false]