as yet unclassified
methodAddedEvent: anEvent
	
	(self isWithinScope: anEvent) ifFalse: [ ^self ].
	self removeDescriptionOf: anEvent item.