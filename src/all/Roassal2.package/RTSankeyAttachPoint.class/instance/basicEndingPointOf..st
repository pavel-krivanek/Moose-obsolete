public - hooks
basicEndingPointOf: anEdge
	| ty x y |
	ty := self for: anEdge get: #ty.
	x := anEdge to position x.
	y := anEdge to position y + ty + ((self for: anEdge get: #dy)/2) - ((self for: anEdge to get: #dy)/2).
	^ x@y 