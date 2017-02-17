events
notifyEventOverseerWith: anEvent
	eventOverseer ifNil: [ ^ self ].
	eventOverseer firedEvent: anEvent