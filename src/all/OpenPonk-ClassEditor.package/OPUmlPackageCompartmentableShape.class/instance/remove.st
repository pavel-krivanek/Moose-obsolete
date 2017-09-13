Roassal2 - updating
remove
	self rtElement view ifNotNil: [ self rtElement remove ].
	view ifNotNil: [ view signalUpdate ].
	view := nil