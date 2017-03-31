*Geometry
edges
	^ { 
		GSegment with: (self origin ) with: (self origin x @ self corner y). 
		GSegment with: (self origin x @ self corner y) with: (self corner).
		GSegment with: (self corner ) with: (self corner x @ self origin y).
 		GSegment with: (self corner x @ self origin y) with: (self origin).
}
