event-processed
trMouseMove: aMorphicEvent
	| trEvent |
	trEvent := self eventOfClass: TRMouseMove from: aMorphicEvent.
	trEvent position: (trachelCanvas camera fromPixelToSpace: trEvent position).
	trEvent shape announce: trEvent.
	self announceToEventOverseer: trEvent