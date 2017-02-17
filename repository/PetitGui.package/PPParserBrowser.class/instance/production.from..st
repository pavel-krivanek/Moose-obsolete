private utilities
production: selector from: class
	^ selector isNil 
		ifTrue: [ ^ PPSentinel instance ]
		ifFalse: [ class newStartingAt: selector ]