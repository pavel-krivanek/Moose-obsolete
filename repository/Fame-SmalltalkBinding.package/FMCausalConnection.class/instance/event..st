as yet unclassified
event: anEvent
	"Called each time the system changes."
	
	(self isWithinScope: anEvent) ifFalse: [ ^self ].
	anEvent itemKind = SystemAnnouncer methodKind ifTrue: [
		anEvent isModified ifTrue: [ 
			^self methodModifiedEvent: anEvent ].
		anEvent isAdded ifTrue: [ 
			^self methodAddedEvent: anEvent ].
		anEvent isRemoved ifTrue: [ 
			^self methodRemovedEvent: anEvent ].
		anEvent halt ].