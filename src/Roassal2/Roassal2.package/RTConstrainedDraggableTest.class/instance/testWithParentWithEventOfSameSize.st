tests
testWithParentWithEventOfSameSize

	| e1 e2 i v |
	e1 := (RTBox new size: 20) element.
	e2 := (RTBox new width: 5; height: 20; color: Color blue) element.
	e2 parentElement: e1.

	i := RTConstrainedDraggable new.
	i withinParent.
	e2 @ i.
	
	"For debugging"
	v := RTView new.
	v add: e1; add: e2.
	
	
	e2 announce: (TRMouseDragging new step: 50 @ 30).
	self assert: e2 position equals: 7.5 @ 0.
	
	e2 announce: (TRMouseDragging new step: -50 @ 30).
	self assert: e2 position equals: -7.5 @ 0.
	
	e2 announce: (TRMouseDragging new step: -50 @ -30).
	self assert: e2 position equals: -7.5 @ 0.
	
	e2 announce: (TRMouseDragging new step: 50 @ -30).
	self assert: e2 position equals: 7.5 @ 0.