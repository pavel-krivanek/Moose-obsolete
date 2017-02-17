accessing
argumentsSentWith: aSelector
	self messageRecorder messagesDo: [:each |
		each selector = aSelector
			ifTrue: [^ each arguments]].
	^ #().