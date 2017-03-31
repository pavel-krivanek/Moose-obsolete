examples
exampleSimple
	<noTest>
	| v1 v2 |
	v1 := RTView new.
	v1 addAll: ((RTEllipse new color: Color green trans; size: 10) elementsOn: #(1 2)).
	RTEdgeBuilder new
		view: v1;
		useAssociation: 1 -> 2.
	RTHorizontalLineLayout on: v1 elements.

	"---"

	v2 := RTView new.
	v2 addAll: ((RTEllipse new color: Color green trans) elementsOn: #(1)).
	v2 addMenu: 'animate' callback:  [ 
		v2 @ (RTMorphingView new referenceView: v1; smoothTransition: 0.3).
	].

	v2 addMenu: 'camerea' callback:  [ 
		v2 canvas camera scale: 10.
		v2 signalUpdate.
	].

	^ v2 inspect