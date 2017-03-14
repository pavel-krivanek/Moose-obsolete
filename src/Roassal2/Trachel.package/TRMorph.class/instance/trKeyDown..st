event-processed
trKeyDown: aMorphicEvent
	| trEvent |
	(aMorphicEvent commandKeyPressed and: [ aMorphicEvent keyCharacter = $w ])
		ifTrue: [ self owner delete ].

	trEvent := self eventOfClass: TRKeyDown from: aMorphicEvent.
	trEvent
		position: (trachelCanvas camera fromPixelToSpace: trEvent position);
		keyValue: aMorphicEvent keyValue;
		keyCombination: aMorphicEvent asKeyCombination.
	trEvent shape announce: trEvent