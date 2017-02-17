rendering
setRenderedYFor: element builder: timelineBuilder
	| indexY |
	indexY := timelineBuilder
		indexOfLineIdentifier: (lineIdentifier rtValue: element model).
	^ (timelineBuilder getPixelPositionOf: 0 @ indexY) y