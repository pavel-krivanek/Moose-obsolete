event-processed
trMouseDoubleClick: aMorphicEvent
	| trEvent |
	trEvent := self
		mouseEventOfClass: TRMouseDoubleClick
		ifLeftButton: TRMouseDoubleLeftClick
		ifRightButton: TRMouseDoubleRightClick
		from: aMorphicEvent.
	trEvent position: (trachelCanvas camera fromPixelToSpace: trEvent position).
	trEvent shape announce: trEvent.
	self announceToEventOverseer: trEvent