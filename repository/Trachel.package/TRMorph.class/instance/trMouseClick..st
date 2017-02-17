event-processed
trMouseClick: aMorphicEvent
	| trEvent |
	trEvent := self
		mouseEventOfClass: TRMouseClick
		ifLeftButton: TRMouseLeftClick
		ifRightButton: TRMouseRightClick
		from: aMorphicEvent.
	trEvent position: (trachelCanvas camera fromPixelToSpace: trEvent position).
	trEvent shape announce: trEvent.
	self announceToEventOverseer: trEvent