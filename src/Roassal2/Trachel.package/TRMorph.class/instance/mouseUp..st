event handling
mouseUp: evt
	self isDragging
		ifTrue: [ self trMouseDragEnd: evt ].
	evt wasHandled: true