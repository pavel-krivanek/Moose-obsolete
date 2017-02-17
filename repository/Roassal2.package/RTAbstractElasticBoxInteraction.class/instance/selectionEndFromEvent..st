selection events
selectionEndFromEvent: aTrachelEvent
	| evt |
	evt := RTSelectionEnd newFrom: aTrachelEvent.
	evt group: group.
	evt shape: self removeShape.
	self announcer announce: evt