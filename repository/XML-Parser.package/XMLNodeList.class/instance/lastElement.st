accessing
lastElement
	self reverseDo: [:each |
		each isElement
			ifTrue: [^ each]].
	^ self defaultValue.