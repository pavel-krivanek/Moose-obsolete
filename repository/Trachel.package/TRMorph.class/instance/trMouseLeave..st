event-processed
trMouseLeave: aMorphicEvent
	| trEvent |
	trEvent := self eventOfClass: TRMouseLeave from: aMorphicEvent.
	trEvent shape announce: trEvent.
	self announceToEventOverseer: trEvent