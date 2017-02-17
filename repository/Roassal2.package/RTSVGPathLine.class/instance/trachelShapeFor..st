public
trachelShapeFor: anEdge
	| trachelShape |
	trachelShape := self trachelShapeClass new.
	trachelShape from: (attachPoint startingPointOf: anEdge) to: (attachPoint endingPointOf: anEdge).
	self updateFor: anEdge trachelShape: trachelShape.
	^ trachelShape