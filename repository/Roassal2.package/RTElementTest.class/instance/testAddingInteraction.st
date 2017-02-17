events
testAddingInteraction

	| e |
	e := RTElement new.
	e @ RTDraggable.
	self assert: e announcer numberOfSubscriptions equals: 1.
	e @ RTPopup.
	self assert: e announcer numberOfSubscriptions equals: 5.