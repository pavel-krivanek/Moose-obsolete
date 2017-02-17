util
updateSelectableShapeWithEvent: event
	| s newgroup |
	s := self getOrCreateShapeForView.
	
	self updateShape: s with: event.
	
	newgroup := self getSelectedElementsWith: s.
	
	group = newgroup ifFalse: [ | evt |
		self removeSelection: group.
		group := newgroup.
		evt := RTSelectionChange newFrom: event.
		evt shape: s.
		evt group: group.
		self announcer announce: evt. ].
	view signalUpdate.
	