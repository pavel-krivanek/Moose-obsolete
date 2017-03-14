tests
testWithParent

	| e1 e2 i v |
	e1 := (RTBox new size: 20) element.
	e2 := (RTBox new size: 5) element.
	e2 parentElement: e1.
	
	i := RTConstrainedDraggable new.
	i withinParent.
	e2 @ i.
	
	"For debugging"
	v := RTView new.
	v add: e1; add: e2.
	
	"No event is being generated, so no restriction"
	e2 translateBy: 50 @ 50.
	self assert: e2 position equals: 50 @ 50.
	