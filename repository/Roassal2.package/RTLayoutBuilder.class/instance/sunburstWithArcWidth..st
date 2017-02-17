public - layout
sunburstWithArcWidth: aNumber
	layout := RTSunburstConstantWidthLayout new.
	layout arcWidth: aNumber.
	^ layout