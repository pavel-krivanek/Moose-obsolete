initialization
initialize
	super initialize.
	self markerColor: self defaultMarkerColor.
	self startValue: 0.
	self endValue: 1.
	distanceInPixelsFromAxis := self defaultSizeInPixelsFromAxis