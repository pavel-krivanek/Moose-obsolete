event-processed
trMouseWheel: aMorphicEvent
	| trEvent |
	trEvent := self eventOfClass: TRMouseWheelEvent from: aMorphicEvent.
	trEvent
		direction: aMorphicEvent direction;
		position: (trachelCanvas camera fromPixelToSpace: trEvent position).
	trEvent shape announce: trEvent.
	self announceToEventOverseer: trEvent