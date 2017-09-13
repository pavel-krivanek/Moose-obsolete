removing
remove: anElement
	anElement announcer unsubscribe: self.
	anElement removeFrom: self.
	elements remove: anElement.
	self announceRemoved: anElement