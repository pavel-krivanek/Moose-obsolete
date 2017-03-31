public - layout
horizontalReversedTree
	actionOnEdges add: [ :edge | edge shape withShorterHorizontalAttachPoint ].
	layout :=  RTReversedHorizontalTreeLayout new.
	^ layout