rendering
open
	"Opening the distribution map, and returns the window"
	
	| view |
	view := RTView new.
	view @ RTDraggableView.
	self renderOn: view.
	^ view openWithToolbarEntitled: self title