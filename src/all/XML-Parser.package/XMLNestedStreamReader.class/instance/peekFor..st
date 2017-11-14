accessing
peekFor: aCharacter
	(self atEnd not
		and: [self peek = aCharacter])
		ifTrue: [
			self next.
			^ true]
		ifFalse: [^ false]