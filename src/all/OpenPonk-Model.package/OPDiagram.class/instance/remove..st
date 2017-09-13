removing
remove: anElement
	(elements includes: anElement)
		ifFalse: [ ^ self ].
	anElement announcer unsubscribe: self.
	elements remove: anElement.
	anElement removedFrom: self.
	self changed.
	self announce: (OPElementRemoved element: anElement)