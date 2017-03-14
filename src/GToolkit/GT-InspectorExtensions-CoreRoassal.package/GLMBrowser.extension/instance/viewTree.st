*GT-InspectorExtensions-CoreRoassal
viewTree

	| view |
	view := RTView new.
	view @ RTDraggableView.
	self viewTreeOn: view.
	^ view open.