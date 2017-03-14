event handling
mouseEnter: evt
	evt anyButtonPressed
		ifFalse: [ self trMouseEnter: evt ].
	evt wasHandled: true