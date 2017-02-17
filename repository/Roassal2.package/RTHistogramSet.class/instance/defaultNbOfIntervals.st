initialization
defaultNbOfIntervals 
	self nbOfIntervals: [ :vls | (vls size) log * 3.3 + 1 ].