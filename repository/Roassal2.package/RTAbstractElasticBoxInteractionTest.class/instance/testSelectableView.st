tests
testSelectableView
	| view e position int |
	view := RTView new.
	e := RTBox element.
	view add: e.
	int := RTSelectableView new.
	position := view canvas camera fromSpaceToPixel: e position.
	view @ int.
	self assert: int group isEmpty.
	view announce: (TRMouseLeftDragStart new
		shape: view;
		position: position;
		canvas: view canvas ).
	view announce: (TRMouseDragging new
		shape: view;
		position: position + e extent;
		canvas: view canvas ).
	view announce: (TRMouseDragEnd new
		shape: view;
		position: position + e extent;
		canvas: view canvas ).
	self assert: int group size = 1.