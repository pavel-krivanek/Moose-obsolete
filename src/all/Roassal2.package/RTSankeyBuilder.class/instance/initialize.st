initialization
initialize
	super initialize.
	self interaction
		when: TRMouseDragging do: [:e| | d |
			d := e element view canvas camera distanceFromPixelToSpace: e step.
			e element translateBy: 0@d y.
			e signalUpdate.
			 ].
	interactionEdge := RTInteractionBuilder new.
	lineShape := RTShapeBuilder new.
	self defaultLine.
	
	labelShape := RTShapeBuilder new.
	labelShape withText: ''.
	labelInteraction := RTInteractionBuilder new.
	
	self shape rectangle width: 10.
	self extent: 400@300.
	self nodePadding: 0.
	self linkValue: 1.