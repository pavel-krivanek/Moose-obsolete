announcement handling
dragging: ann
	| d |
	d := ann element view canvas camera distanceFromPixelToSpace: ann step.
	ghost translateBy: (self transformDistance: d forElement: ann element).
	self constraintIfNecessary: ghost.
	ghost signalUpdate