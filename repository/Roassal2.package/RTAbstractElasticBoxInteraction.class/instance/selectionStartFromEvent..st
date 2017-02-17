selection events
selectionStartFromEvent: aTrachelEvent
	| evt |
	evt := RTSelectionStart newFrom: aTrachelEvent.
	group := RTGroup new.
	evt group: group.
	evt shape: self getOrCreateShapeForView.
	self announcer announce: evt.