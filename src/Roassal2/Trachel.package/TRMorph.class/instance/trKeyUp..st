event-processed
trKeyUp: aMorphicEvent
	| trEvent |
	trEvent := self eventOfClass: TRKeyUp from: aMorphicEvent.
	trEvent
		position: (trachelCanvas camera fromPixelToSpace: trEvent position);
		keyValue: aMorphicEvent keyValue;
		keyCombination: aMorphicEvent asKeyCombination.
	trEvent shape announce: trEvent