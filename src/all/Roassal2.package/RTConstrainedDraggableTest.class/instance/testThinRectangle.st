tests
testThinRectangle

	| e1 e2 i v |
	e1 := (RTBox new size: 20) element.
	e2 := (RTBox new width: 5; height: 20; color: Color blue) element.

	i := RTConstrainedDraggable new.
	i rectangle: [ :e | e1 position corner: e1 position ].
	e2 @ i.
	
	"For debugging"
	v := RTView new.
	v add: e1; add: e2.
	
	
	e2 announce: (TRMouseDragging new step: 50 @ 30).
	self assert: e2 position equals: 0 @ 0.
	
	e2 announce: (TRMouseDragging new step: -50 @ 30).
	self assert: e2 position equals: 0 @ 0.
	
	e2 announce: (TRMouseDragging new step: -50 @ -30).
	self assert: e2 position equals: 0 @ 0.
	
	e2 announce: (TRMouseDragging new step: 50 @ -30).
	self assert: e2 position equals: 0 @ 0.