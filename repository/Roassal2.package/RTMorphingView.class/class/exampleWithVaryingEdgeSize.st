examples
exampleWithVaryingEdgeSize
	<noTest>
	| v1 v2 eb |
	v1 := RTView new.
	v1 addAll: ((RTEllipse new color: Color green trans; size: 10) elementsOn: #(1 2 3)).
	eb := RTEdgeBuilder new
		view: v1.
	eb shape line width: [ :ee | 10 atRandom ] ; color: [ :ee | Color random ].
	eb
		useAssociations: (Array with: 1 -> 2 with: 2 -> 3 ).
	RTHorizontalLineLayout on: v1 elements.

	"---"

	v2 := RTView new.
	v2 addAll: ((RTEllipse new color: Color green trans; size: 10) elementsOn: #(1 2 3)).
	eb := RTEdgeBuilder new
		view: v2.
	eb shape line width: [ :ee | 10 atRandom ] ; color: [ :ee | Color random ].
	eb
		useAssociations: (Array with: 1 -> 2 with: 2 -> 3).
	RTHorizontalLineLayout on: v2 elements.
	"---"
	v2 addMenu: 'animate' callback:  [ 
		v2 @ (RTMorphingView new referenceView: v1; smoothTransition: 0.3).
	].
	v2 canvas camera scale: 10.

	^ v2 inspect