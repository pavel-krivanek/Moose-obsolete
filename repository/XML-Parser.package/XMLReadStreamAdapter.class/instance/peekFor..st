accessing
peekFor: anObject
	self peek = anObject
		ifTrue: [
			self next.
			^ true]
		ifFalse: [^ false]