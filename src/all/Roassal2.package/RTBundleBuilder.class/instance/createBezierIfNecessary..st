rendering-utility
createBezierIfNecessary: aView
	connectBezierBlock ifNil: [ ^ self ].
	RTEdgeBuilder new
		view: aView;
		elements: elements;
		shape: bezier;
		connectToAll: connectBezierBlock.