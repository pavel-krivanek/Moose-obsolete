public - layout
treeReversed
	actionOnEdges add: [ :edge | edge shape withShorterVerticalAttachPoint ].
	layout := RTReversedTreeLayout new.
	^ layout