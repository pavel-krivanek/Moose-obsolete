event-processed
trMouseEnter: aMorphicEvent
	| trEvent |
	trEvent := self eventOfClass: TRMouseEnter from: aMorphicEvent.
	trEvent shape announce: trEvent.
	self announceToEventOverseer: trEvent