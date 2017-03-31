as yet unclassified
methodRemovedEvent: anEvent
	
	(self isWithinScope: anEvent) ifFalse: [ ^self ].
	self removeDescriptionOf: anEvent item.