beziers
beziers02
	<gtExample>
	
	"
	self new beziers02
	"

	| v classes hierarchicalLinks depLinks dep |
	v := RTView new.
	classes := (RTEllipse new
		color: Color purple;
		size: 10) elementsOn: Collection withAllSubclasses.
	classes @ RTDraggable @ RTPopup.
	classes
		when: TRMouseEnter
		do: [ :evt | RTBlink outgoingEdgesOf: evt element ].
	v addAll: classes.
	hierarchicalLinks := RTEdgeBuilder new
		view: v;
		objects: Collection withAllSubclasses;
		shape: (RTLine new color: (Color white alpha: 0.2));
		connectFrom: #superclass to: #yourself.

	"A nice layout"
	RTClusterLayout on: v elements edges: v edges.

	"Computing dependencies"
	dep := OrderedCollection new.
	Collection withAllSubclasses
		do:
			[ :cls | 
			cls rtmethods
				do:
					[ :cm | 
					((cm literals
						select: [ :l | l class == Association and: [ l value notNil ] ])
						collect: #value)
						do:
							[ :depClass | 
							cls ~~ depClass
								ifTrue: [ dep add: cls -> depClass ] ] ] ].

	"Add dependency edges"
	depLinks := RTEdgeBuilder new
		view: v;
		objects: dep;
		shape:
			(RTBezierLine new
				color: (Color blue alpha: 0.2);
				follow: #superclass);
		connectFrom: #key to: #value.


	"Move the edges at the back"
	depLinks do: [ :e | e trachelShape pushBack ].
	hierarchicalLinks do: [ :e | e trachelShape pushBack ].

	"Open the view"
	^ v