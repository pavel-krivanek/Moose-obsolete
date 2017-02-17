as yet unclassified
testZoomableBoxView
	| view e position int |
	view := RTView new.
	e := RTBox element.
	view add: e.
	int := RTZoomableBoxView new.
	position := view canvas camera fromSpaceToPixel: e position.
	view @ int.
	self assert: view canvas camera scale equals: 1.0001.
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
	self assert: view canvas camera scale > 1.0001.