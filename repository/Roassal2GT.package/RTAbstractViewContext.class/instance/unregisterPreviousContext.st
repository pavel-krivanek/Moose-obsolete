public
unregisterPreviousContext
	self view ifNil: [ ^ self ].
	(self class getContextFor: self view) removeFromView