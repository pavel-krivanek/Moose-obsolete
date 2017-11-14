public - hooks
basicStartingPointOf: anEdge
	| sy x y |
	sy := self for: anEdge get: #sy.
	x := anEdge from position x+ (self for: anEdge from get: #dx).
	y := anEdge from position y + sy + ((self for: anEdge get: #dy)/2) - ((self for: anEdge from get: #dy)/2).
	^ x@y 