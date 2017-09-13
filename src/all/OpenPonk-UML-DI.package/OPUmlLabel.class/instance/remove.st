Roassal2 - manipulation
remove
	| view |
	self owningElement
		ifNotNil: [ :oldOwner | 
			self owningElement: nil.
			oldOwner update ].
	view := self rtElement view.
	view ifNil: [ ^ self ].
	self rtElement remove.
	view signalUpdate