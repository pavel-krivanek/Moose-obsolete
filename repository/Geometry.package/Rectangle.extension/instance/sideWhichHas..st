*Geometry
sideWhichHas: point
	
	^ self edges detect: [ :edge | edge hasPoint: point ]
