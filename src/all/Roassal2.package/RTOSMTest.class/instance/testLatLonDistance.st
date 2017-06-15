tests
testLatLonDistance
	self assert: (#(#Float #BoxedFloat64 #SmallFloat64) includes: (RTOSM new latLon: 48.85 @ 2.3 distance: 100) class name)