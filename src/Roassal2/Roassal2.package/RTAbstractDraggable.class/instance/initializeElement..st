hooks
initializeElement: element
	self assert: [ element class ~~ RTView ] description: 'Please use RTDraggableView instead'.
	element when: TRMouseDragging do: [ :e | 
		| d t |
		t := RTGroup withAll: groupToDrag.
		(t includes: element) ifFalse: [ t add: element ].
		d := element view canvas camera distanceFromPixelToSpace: e step.
		t translateBy: (self transformDistance: d forElement: element). 
		self constraintIfNecessary: element.
		e signalUpdate ]