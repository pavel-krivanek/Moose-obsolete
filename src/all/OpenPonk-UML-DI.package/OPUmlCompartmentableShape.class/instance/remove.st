Roassal2 - updating
remove
	self separators select: [ :each | each view isNotNil ] thenDo: #remove.
	self figures select: [ :each | each view isNotNil ] thenDo: #remove.
	self figures do: [ :each | each owningElement: nil ].
	self compartments select: [ :each | each view isNotNil ] thenDo: #remove.
	self compartments do: [ :each | each owningElement: nil ].
	self rtElement view ifNotNil: [ self rtElement remove ].
	view ifNotNil: [ view signalUpdate ].
	view := nil