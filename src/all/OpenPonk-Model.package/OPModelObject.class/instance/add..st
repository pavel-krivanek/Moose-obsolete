adding
add: anElement
	(elements includes: anElement)
		ifTrue: [ ^ self ].
	anElement addedTo: self.
	elements add: anElement.
	anElement when: OPElementChanged send: #changed to: self.
	self announceAdded: anElement