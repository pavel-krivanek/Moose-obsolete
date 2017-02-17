layout
cellLayout
	"
	self new cellLayout
	"

	<gtExample>
	| view substrings |
	view := RTView new.
	substrings := (RTCellLayout >> #doExecute:) sourceCode substrings.
	view addAll: (RTLabel elementsOn: substrings).
	RTCellLayout on: view elements.
	view @ RTDraggableView.
	^ view