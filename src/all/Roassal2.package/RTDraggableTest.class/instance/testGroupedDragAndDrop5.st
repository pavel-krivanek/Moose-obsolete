tests
testGroupedDragAndDrop5
	
	| oldPosition |
	oldPosition := e1 position.
	(RTGroup withAll: (Array with: e2 with: e3 with: e1)) @ (RTDraggable groupToDrag: (Array with: e1 with: e2 with: e3)).

	e2 translateBy: 5 @ 5.
	e3 translateBy: 10 @ 10.

	e2 announce: (TRMouseDragging new step: 5 @ 5).
	e3 announce: (TRMouseDragging new step: 10 @ 15).
	self assert: (e1 position closeTo: (oldPosition + (5 @ 5) + (10 @ 15)))