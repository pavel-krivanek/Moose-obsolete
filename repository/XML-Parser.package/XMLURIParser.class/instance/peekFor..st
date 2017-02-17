private
peekFor: aCharacter
	self peek = aCharacter
		ifTrue: [
			self next.
			^ true]
		ifFalse: [^ false]