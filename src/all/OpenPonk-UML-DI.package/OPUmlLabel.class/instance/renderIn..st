Roassal2 - manipulation
renderIn: aView
	self rtElement view ifNotNil: [ ^ self ].
	aView add: self rtElement.
	aView signalUpdate