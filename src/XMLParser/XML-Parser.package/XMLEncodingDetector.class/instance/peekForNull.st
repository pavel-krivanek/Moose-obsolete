private
peekForNull
	self peek == NullCharacter
		ifTrue: [
			self next.
			^ true]
		ifFalse: [^ false]