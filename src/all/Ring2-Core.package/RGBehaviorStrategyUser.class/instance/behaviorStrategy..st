accessing
behaviorStrategy: anObject

	| needsInitialization |
	
	needsInitialization := behaviorStrategy isNil.
	behaviorStrategy := anObject.
	behaviorStrategy owner: self.
	needsInitialization ifTrue: [ 
		behaviorStrategy initializeUnresolved ].
	