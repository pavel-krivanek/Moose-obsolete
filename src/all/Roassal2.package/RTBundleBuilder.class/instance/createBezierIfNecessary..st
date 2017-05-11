rendering-utility
createBezierIfNecessary: aView
	| ebuilder   |
	connectBezierBlock ifNil: [ ^ self ].
	edgeBuilderDo ifNil: [^ self ].
	ebuilder := RTEdgeBuilder new
		view: aView;
		elements: elements;
		shape: bezier.
	edgeBuilderDo value: ebuilder.