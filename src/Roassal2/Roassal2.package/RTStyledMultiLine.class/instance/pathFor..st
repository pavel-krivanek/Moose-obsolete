accessing
pathFor: anEdge
	| fromPoint toPoint |
	fromPoint := attachPoint startingPointOf: anEdge.
	toPoint := attachPoint endingPointOf: anEdge.
	^ blockProducingPath value: fromPoint value: toPoint