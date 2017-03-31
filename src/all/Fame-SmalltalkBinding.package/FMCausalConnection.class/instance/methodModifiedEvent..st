as yet unclassified
methodModifiedEvent: anEvent
	
	(self isWithinScope: anEvent) ifFalse: [ ^self ].
	self removeDescriptionOf: anEvent oldItem.
	self addDescriptionOf: anEvent item.