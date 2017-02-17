public - hooks
basicStartingPointOf: anEdge
	^ (super basicStartingPointOf: anEdge) + (self offsetNormalFor: anEdge)