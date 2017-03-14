layout
cellLayout2
	<gtExample>
	"
	self new cellLayout2
	"
	| view substrings |
	view := RTView new.
	substrings := #('doExecute:' 'elements' '|').
	view addAll: (RTLabel elementsOn: substrings).
	
	RTCellLayout new lineItemsCount: 3; on: view elements.
	view @ RTDraggableView.
	^ view