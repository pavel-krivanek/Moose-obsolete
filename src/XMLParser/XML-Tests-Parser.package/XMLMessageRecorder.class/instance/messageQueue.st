private
messageQueue
	^ messageQueue ifNil: [messageQueue := OrderedCollection new]