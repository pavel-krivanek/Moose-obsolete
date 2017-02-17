events
testRemovingEvent

	| e |
	e := RTElement new.
	e @ RTDraggable.
	e @ RTPopup.
	e removeInteractionIfPresent: RTPopup.
	self assert: e announcer numberOfSubscriptions equals: 1.