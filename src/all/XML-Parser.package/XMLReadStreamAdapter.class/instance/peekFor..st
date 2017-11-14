accessing
peekFor: anObject
	(self atEnd not
		and: [self peek = anObject])
		ifTrue: [
			self next.
			^ true]
		ifFalse: [^ false]