public - layout
horizontalReversedTree
	actionOnEdges add: [ :edge | edge shape withShorterHorizontalAttachPoint ].
	layout :=  RTHorizontalTreeLayout new.
	layout horizontallyReverse.
	^ layout